#bridge-file-version: #1
# My Comment
tag @s add emerald

execute as @a[tag=emerald] at @s run playsound item.trident.thunder @a[r=15] ~ ~ ~
execute as @a[tag=emerald] at @s run playsound mace.smash_ground @a[r=15] ~ ~ ~
execute as @a[tag=emerald] at @s run playsound bloom.sculk_catalyst @a[r=15] ~ ~ ~
execute as @a[tag=emerald] at @s run playsound conduit.attack @a[r=15] ~ ~ ~
execute as @a[tag=emerald] at @s run playsound mob.allay.idle @a[r=15] ~ ~ ~
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] fatal_poison 30 255 true
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] oozing 15 5 true
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] blindness 10 1 true
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] hunger 20 5 true
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] mining_fatigue 10 2 true
execute as @a[tag=emerald] at @s run effect @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 2 1 true

execute as @e[tag=!emerald,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 20 magic


particle minecraft:enchanting_table_particle ~1 ~ ~
particle minecraft:enchanting_table_particle ~ ~ ~1
particle minecraft:enchanting_table_particle ~ ~ ~-2
particle minecraft:enchanting_table_particle ~-2 ~ ~

particle minecraft:enchanting_table_particle ~ ~2 ~
particle minecraft:enchanting_table_particle ~1 ~2 ~
particle minecraft:enchanting_table_particle ~ ~2 ~1
particle minecraft:enchanting_table_particle ~-2 ~2 ~
particle minecraft:enchanting_table_particle ~ ~2 ~-2

particle minecraft:enchanting_table_particle ~2 ~1 ~
particle minecraft:enchanting_table_particle ~ ~1 ~2
particle minecraft:enchanting_table_particle ~ ~1 ~-2.5
particle minecraft:enchanting_table_particle ~-3 ~1 ~

particle minecraft:enchanting_table_particle ~1 ~-1 ~
particle minecraft:enchanting_table_particle ~ ~-1 ~1
particle minecraft:enchanting_table_particle ~ ~-1 ~-2
particle minecraft:enchanting_table_particle ~-2 ~-1 ~

particle minecraft:enchanting_table_particle ~-2 ~ ~2
particle minecraft:enchanting_table_particle ~-2 ~ ~-2
particle minecraft:enchanting_table_particle ~1 ~ ~-1
particle minecraft:enchanting_table_particle ~1 ~ ~1

particle minecraft:enchanting_table_particle ~-2.5 ~ ~2.5
particle minecraft:enchanting_table_particle ~-2.5 ~ ~-2.5
particle minecraft:enchanting_table_particle ~1.5 ~ ~-1.5
particle minecraft:enchanting_table_particle ~1.5 ~ ~1.5

particle minecraft:enchanting_table_particle ~0.5 ~ ~
particle minecraft:enchanting_table_particle ~ ~ ~0.5
particle minecraft:enchanting_table_particle ~ ~ ~-1.5
particle minecraft:enchanting_table_particle ~-1.5 ~ ~

particle minecraft:enchanting_table_particle ~1.5 ~0.5 ~
particle minecraft:enchanting_table_particle ~ ~0.5 ~1.5
particle minecraft:enchanting_table_particle ~ ~0.5 ~-2.5
particle minecraft:enchanting_table_particle ~-3 ~0.5 ~

particle minecraft:enchanting_table_particle ~0.5 ~-0.5 ~
particle minecraft:enchanting_table_particle ~ ~-0.5 ~0.5
particle minecraft:enchanting_table_particle ~ ~-0.5 ~-1.5
particle minecraft:enchanting_table_particle ~-1.5 ~-0.5 ~

particle minecraft:crop_growth_emitter ~1 ~ ~
particle minecraft:crop_growth_emitter ~ ~ ~1
particle minecraft:crop_growth_emitter ~ ~ ~-2
particle minecraft:crop_growth_emitter ~-2 ~ ~

particle minecraft:crop_growth_emitter ~ ~2 ~
particle minecraft:crop_growth_emitter ~1 ~2 ~
particle minecraft:crop_growth_emitter ~ ~2 ~1
particle minecraft:crop_growth_emitter ~-2 ~2 ~
particle minecraft:crop_growth_emitter ~ ~2 ~-2

particle minecraft:crop_growth_emitter ~2 ~1 ~
particle minecraft:crop_growth_emitter ~ ~1 ~2
particle minecraft:crop_growth_emitter ~ ~1 ~-2.5
particle minecraft:crop_growth_emitter ~-3 ~1 ~

particle minecraft:crop_growth_emitter ~1 ~-1 ~
particle minecraft:crop_growth_emitter ~ ~-1 ~1
particle minecraft:crop_growth_emitter ~ ~-1 ~-2
particle minecraft:crop_growth_emitter ~-2 ~-1 ~

particle minecraft:crop_growth_emitter ~-2 ~ ~2
particle minecraft:crop_growth_emitter ~-2 ~ ~-2
particle minecraft:crop_growth_emitter ~1 ~ ~-1
particle minecraft:crop_growth_emitter ~1 ~ ~1

particle minecraft:crop_growth_emitter ~-2.5 ~ ~2.5
particle minecraft:crop_growth_emitter ~-2.5 ~ ~-2.5
particle minecraft:crop_growth_emitter ~1.5 ~ ~-1.5
particle minecraft:crop_growth_emitter ~1.5 ~ ~1.5

particle minecraft:crop_growth_emitter ~0.5 ~ ~
particle minecraft:crop_growth_emitter ~ ~ ~0.5
particle minecraft:crop_growth_emitter ~ ~ ~-1.5
particle minecraft:crop_growth_emitter ~-1.5 ~ ~

particle minecraft:crop_growth_emitter ~1.5 ~0.5 ~
particle minecraft:crop_growth_emitter ~ ~0.5 ~1.5
particle minecraft:crop_growth_emitter ~ ~0.5 ~-2.5
particle minecraft:crop_growth_emitter ~-3 ~0.5 ~

particle minecraft:crop_growth_emitter ~0.5 ~-0.5 ~
particle minecraft:crop_growth_emitter ~ ~-0.5 ~0.5
particle minecraft:crop_growth_emitter ~ ~-0.5 ~-1.5
particle minecraft:crop_growth_emitter ~-1.5 ~-0.5 ~


particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:totem_particle ~ ~ ~
particle minecraft:cauldron_explosion_emitter ~ ~ ~
particle minecraft:crop_growth_area_emitter ~ ~0.4 ~
particle minecraft:splash_spell_emitter ~ ~ ~

effect @p resistance 5 1 true
effect @p health_boost 8 6 true
