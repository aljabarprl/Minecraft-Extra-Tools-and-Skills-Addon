#bridge-file-version: #1
# My Comment
# Pasa Std.

summon zombie DEWA_ZOMBIE ~ ~1.5 ~
execute as @e[type=zombie,name=DEWA_ZOMBIE,c=1] at @s run particle minecraft:knockback_roar_particle ~ ~1.5 ~
execute as @e[type=zombie,name=DEWA_ZOMBIE,c=1] at @s run particle minecraft:splash_spell_emitter ~ ~ ~

effect @e[type=zombie,name=DEWA_ZOMBIE,c=1] absorption infinite 10 true
effect @e[type=zombie,name=DEWA_ZOMBIE,c=1] regeneration infinite 6 true
effect @e[type=zombie,name=DEWA_ZOMBIE,c=1] strength infinite 10 true
effect @e[type=zombie,name=DEWA_ZOMBIE,c=1] resistance 5 3 true

replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.armor.head 1 netherite_helmet
replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.armor.body 1 netherite_chestplate
replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.armor.legs 1 netherite_leggings
replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.armor.feet 1 netherite_boots
replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.weapon.mainhand 1 skill:battle_axe_limitless
replaceitem entity @e[type=zombie,name=DEWA_ZOMBIE,c=1] slot.weapon.offhand 1 skill:dark_sword