import { world, system } from "@minecraft/server"; // modul server

const cooldowns = new Map(); // Cooldown normal (8 detik)
const cooldownsSneak = new Map(); // Cooldown ultimate (30 detik)

const COOLDOWN_TIME_NORMAL = 8000; // 8 detik
const COOLDOWN_TIME_SNEAK = 30000; // 30 detik
const ITEM_ID = "skill:battle_axe_diamond";

// UPDATE | karena update API dari mojang, jadi informasi cooldown tidak lagi muncul di actionbar 
// namun akan muncul lewat kolom chat

// Event saat item digunakan
world.afterEvents.itemUse.subscribe((event) => {
    const player = event.source;
    const item = event.itemStack;
    const now = Date.now();

    if (item.typeId === ITEM_ID) {
        const isSneaking = player.isSneaking;

        // Pilih cooldown berdasarkan kondisi jongkok atau tidak
        const cooldownMap = isSneaking ? cooldownsSneak : cooldowns;
        const cooldownTime = isSneaking ? COOLDOWN_TIME_SNEAK : COOLDOWN_TIME_NORMAL;

        // Ambil waktu terakhir pemakaian
        const lastUse = cooldownMap.get(player.name) || 0;

        if (now - lastUse < cooldownTime) {
            const remainingTime = Math.ceil((cooldownTime - (now - lastUse)) / 1000);
            
            // Format teks sesuai jenis cooldown
            const cooldownText = isSneaking 
                ? `Cooldown Ultimate: ${remainingTime}`
                : `Cooldown: ${remainingTime}`;

            player.sendMessage(`⏳ ${cooldownText}`);
            
            // Jalankan countdown di chat
            startCooldownCountdown(player, cooldownTime - (now - lastUse), isSneaking);
            return;
        }

        // Set cooldown baru
        cooldownMap.set(player.name, now);

        // Skill Biasa
        player.runCommand("execute as @p run tag @s add boom");
        player.runCommand("playsound beacon.deactivate @a[r=15] ~ ~ ~");
        player.runCommand("execute as @p run summon skill:sonic_boom ~ ~ ~");
        player.runCommand("particle minecraft:large_explosion ~ ~1 ~");
        player.runCommand("effect @p speed 2 1 true");

        if (isSneaking) {
            // Skill Ultimate
            player.runCommand("execute as @p run tag @s add boomult");
            player.runCommand("playsound beacon.power @a[r=15] ~ ~ ~");
            player.runCommand("playsound random.fizz @a[r=15] ~ ~ ~ 30 0.5");
            player.runCommand("execute as @p run summon skill:sonic_boom_ult ~ ~ ~");
            player.runCommand("execute as @a[tag=boomult] at @s run effect @e[tag=!boomult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=7,c=10] slowness 4 2 true");
            player.runCommand("particle minecraft:large_explosion ~ ~1 ~");
            player.runCommand("effect @p speed 4 1 true");
            player.runCommand("effect @p resistance 4 2 true");
        }

        // Kirim pesan awal (trigger)
        const activationText = isSneaking ? "⌛[Ultimate:Sonic]" : "⌛[Battle Axe:Sonic]";
        player.sendMessage(activationText);

        // Jalankan countdown di action bar
        startCooldownCountdown(player, cooldownTime, isSneaking);
    }
});

// Fungsi untuk countdown di action bar (dari 5 ke 0 atau 50 ke 0)
function startCooldownCountdown(player, cooldownTime, isSneaking) {
    let remainingSeconds = Math.ceil(cooldownTime / 1000);

    const interval = setInterval(() => {
        const heldItem = player.getComponent("minecraft:equippable")?.getEquipment("mainhand")?.typeId;

        if (remainingSeconds > 0 && heldItem === ITEM_ID) {
            const countdownText = isSneaking 
                ? `Cooldown Ultimate: ${remainingSeconds}`
                : `Cooldown: ${remainingSeconds}`;

            player.runCommand(`title @s actionbar ${countdownText}`);
            remainingSeconds--;
        } else {
            clearInterval(interval); // Hentikan loop saat cooldown habis atau item diganti
        }
    }, 1000); // Update setiap 1 detik
}
