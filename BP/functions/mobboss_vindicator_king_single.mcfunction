#bridge-file-version: #1
# My Comment
# Pasa Std.

summon vindicator ^ ^ ^3
execute as @e[type=vindicator,c=1] at @s run particle minecraft:knockback_roar_particle ~ ~1.5 ~
execute as @e[type=vindicator,c=1] at @s run particle minecraft:splash_spell_emitter ~ ~ ~

replaceitem entity @e[type=vindicator,c=1] slot.armor.head 1 netherite_helmet
replaceitem entity @e[type=vindicator,c=1] slot.armor.body 1 netherite_chestplate
replaceitem entity @e[type=vindicator,c=1] slot.armor.legs 1 netherite_leggings
replaceitem entity @e[type=vindicator,c=1] slot.armor.feet 1 netherite_boots
replaceitem entity @e[type=vindicator,c=1] slot.weapon.mainhand 1 skill:battle_axe_heaven
replaceitem entity @e[type=vindicator,c=1] slot.weapon.offhand 1 skill:battle_axe_heaven
