import { world, system } from "@minecraft/server"; // modul server

const cooldowns = new Map(); // Cooldown normal (5 detik)
const cooldownsSneak = new Map(); // Cooldown Ultimate (25 detik)

const COOLDOWN_TIME_NORMAL = 5000; // 5 detik
const COOLDOWN_TIME_SNEAK = 25000; // 25 detik
const ITEM_ID = "skill:battle_hamma_fire";

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

        // Eksekusi perintah setelah cooldown valid
        player.runCommand("execute as @p run function battle_hamma_fire_1");

        for (const entity of world.getDimension("overworld").getEntities({ location: player.location, maxDistance: 5, excludeNames: [player.name] })) {
            entity.setOnFire(5); // Bakar selama 5 detik
        }

        player.runCommand("effect @p speed 2 1 true");
        player.runCommand("execute as @p run tag @s remove battlehammafire");
        player.playAnimation("animation.player.attack.positions");

        if (isSneaking) {
            player.runCommand("execute as @p run function battle_hamma_fire_2");
            player.runCommand("effect @p speed 2 1 true");

            for (const entity of world.getDimension("overworld").getEntities({ location: player.location, maxDistance: 5, excludeNames: [player.name] })) {
                entity.setOnFire(99999); // Bakar selamanya
                entity.addEffect("slowness", 60, { amplifier: 1, showParticles: true }); // Slowness 3 detik (no longer work)
            }

            // Atur cuaca menjadi thunder selama 3 detik
            player.runCommand("execute as @p run tag @s remove battlehammafire");
        }

        // Kirim pesan awal (trigger)
        const activationText = isSneaking ? "⌛[Ultimate:Fire]" : "⌛[Battle Hamma:Fire]";
        player.sendMessage(activationText);

        // Jalankan countdown di action bar
        startCooldownCountdown(player, cooldownTime, isSneaking);
    }
});

// **Fungsi untuk countdown di action bar (dari 5 ke 0 atau 50 ke 0)
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
