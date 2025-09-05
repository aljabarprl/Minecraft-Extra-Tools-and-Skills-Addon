import { world, system } from "@minecraft/server";

const cooldowns = new Map(); // Cooldown normal (2 detik)
const cooldownsSneak = new Map(); // Cooldown Ultimate (60 detik)

const COOLDOWN_TIME_NORMAL = 2000; // 2 detik
const COOLDOWN_TIME_SNEAK = 60000; // 60 detik
const ITEM_ID = "skill:thunder_sword";

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
            
            // Jalankan countdown di action bar
            startCooldownCountdown(player, cooldownTime - (now - lastUse), isSneaking);
            return;
        }

        // Set cooldown baru
        cooldownMap.set(player.name, now);

        // Eksekusi perintah setelah cooldown valid
        player.runCommand("execute as @p run function thunder_sword");
        player.runCommand("effect @p speed 2 1 true");
        player.runCommand("execute as @p run summon lightning_bolt ^ ^ ^6");
        player.runCommand("execute as @p run tag @s remove thunder");
        player.playAnimation("animation.player.attack.positions");


        // mode ultimate
        if (isSneaking) {
            player.runCommand("execute as @p run function thunder_sword_1");
            player.runCommand("effect @p speed 2 1 true");
            player.runCommand("execute as @p run tag @s remove thunder");

        }
        
        // Jalankan countdown di action bar
        startCooldownCountdown(player, cooldownTime, isSneaking);
    }
});

// **Fungsi untuk countdown di action bar (dari 7 ke 0 atau 60 ke 0)
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

// Event saat entity terkena serangan (No longer work)
world.afterEvents.entityHit.subscribe((event) => {
    const attacker = event.damagingEntity;
    const target = event.hitEntity;
    
    // Pastikan attacker adalah pemain dan memegang Thunder Sword
    if (!attacker || !target || !attacker.hasTag("player")) return;
    
    const heldItem = attacker.getComponent("minecraft:equippable")?.getEquipment("mainhand")?.typeId;
    if (heldItem !== ITEM_ID) return;

    // Panggil mcfunction untuk memunculkan petir
    attacker.runCommand("function thunder_strike");
});
