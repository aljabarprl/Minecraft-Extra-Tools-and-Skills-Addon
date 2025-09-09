import { world, system, Player } from "@minecraft/server";

// ID item untuk set data cooldown dan function
const ITEM_ID = "skill:dark_sword";

world.beforeEvents.worldInitialize.subscribe(ev => {
    const { itemComponentRegistry } = ev;

    itemComponentRegistry.registerCustomComponent(ITEM_ID, {
        onUse: (data) => {
            const player = data.source;

            const cooldownCategory = "dark_sword_normal";
            const cooldownDuration = 100; // 5 detik = 100 ticks

            // Jalankan skill Normal
            player.runCommandAsync("execute as @p run function dark_sword_2");
            player.runCommandAsync("effect @p speed 2 1 true");
            player.runCommandAsync("execute as @p run tag @s remove darksword");
            player.playAnimation("animation.player.attack.positions");
            
            // Memulai cooldown bawaan Minecraft API
            player.startItemCooldown(cooldownCategory, cooldownDuration);
        }
    });
});

// Fitur: 60% Kemungkinan Efek Slow Saat Menyerang
world.afterEvents.entityHurt.subscribe(ev => {
    const attacker = ev.damagingEntity;
    const target = ev.hurtEntity;

    // Pastikan penyerang adalah pemain dan memegang Dark Sword
    if (!(attacker instanceof Player) || !target) return;

    const heldItem = attacker.getComponent("minecraft:equippable")?.getEquipment("mainhand")?.typeId;
    if (heldItem !== ITEM_ID) return;

    // Hitung 60% kemungkinan
    if (Math.random() < 0.6) {
        // Jika beruntung (60% chance), berikan efek Slow
        target.runCommandAsync(`effect @s slowness 5 5 true`);
    }
});
