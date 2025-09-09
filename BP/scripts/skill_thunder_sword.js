import { world, system, Player } from "@minecraft/server";

// ID item untuk set data cooldown dan function
const ITEM_ID = "skill:thunder_sword";

world.beforeEvents.worldInitialize.subscribe(ev => {
    const { itemComponentRegistry } = ev;

    itemComponentRegistry.registerCustomComponent(ITEM_ID, {
        onUse: (data) => {
            const player = data.source;

            const cooldownCategory = "thunder_sword_normal";
            const cooldownDuration = 40; // 2 detik = 40 ticks

            // Jalankan skill Normal
            player.runCommandAsync("execute as @p run function thunder_sword");
            player.runCommandAsync("effect @p speed 2 1 true");
            player.runCommandAsync("execute as @p run summon lightning_bolt ^ ^ ^6");
            player.runCommandAsync("execute as @p run tag @s remove thunder");
            player.playAnimation("animation.player.attack.positions");

            // Memulai cooldown bawaan Minecraft API
            player.startItemCooldown(cooldownCategory, cooldownDuration);
        }
    });
});

// Fitur: 40% Kemungkinan Petir Saat Menyerang
world.afterEvents.entityHurt.subscribe(ev => {
    const attacker = ev.damagingEntity;
    const target = ev.hurtEntity;

    // Pastikan penyerang adalah pemain dan memegang Thunder Sword
    if (!(attacker instanceof Player) || !target) return;

    const heldItem = attacker.getComponent("minecraft:equippable")?.getEquipment("mainhand")?.typeId;
    if (heldItem !== ITEM_ID) return;

    // Hitung 40% kemungkinan
    if (Math.random() < 0.4) {
        // Panggil perintah petir di lokasi target
        attacker.runCommandAsync(`summon lightning_bolt ${target.location.x} ${target.location.y} ${target.location.z}`);
    }
});
