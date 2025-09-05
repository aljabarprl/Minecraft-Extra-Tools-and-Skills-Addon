import * as mc from '@minecraft/server'; // modul server

mc.world.beforeEvents.playerBreakBlock.subscribe(event => {
  // Periksa apakah player berada dalam creative mode
  const gameMode = event.player.getGameMode();
  if (gameMode === "creative") return; // Batalkan jika player berada dalam creative mode

  mc.system.run(() => {
    const tool = event.player.getComponent("equippable")?.getEquipment("Mainhand");
    if (!tool?.typeId?.startsWith("skill:")) return; // Periksa apakah alat tersebut memiliki specific "type ID" prefix (namespace)
    const level = event.itemStack.getComponent("minecraft:enchantable")?.getEnchantment("unbreaking")?.level;
    let Damage = 1;

    function durability() {
      const durabilityComponent = tool.getComponent("minecraft:durability");
      if (durabilityComponent.maxDurability - durabilityComponent.damage > Damage) {
        // Meningkatkan kerusakan item jika belum sepenuhnya rusak
        durabilityComponent.damage += Damage;
        event.player.getComponent("equippable").setEquipment("Mainhand", tool);
      } else {
        // Jika item nya rusak, me-replace itemnya dengan air dan jalankan "break" sound efek
        event.player.runCommand("replaceitem entity @s slot.weapon.mainhand 0 air");
        event.player.runCommand("playsound random.break @a[r=4] ~ ~ ~");
      }
    }

    const t = Math.floor(Math.random() * 10);
    // Logika Unbreaking enchantment
    if (level === 1 && t > 8) Damage = 0;
    else if (level === 2 && t > 6) Damage = 0;
    else if (level === 3 && t > 4) Damage = 0;
    else durability();
    // 
  });
});
