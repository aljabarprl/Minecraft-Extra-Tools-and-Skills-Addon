#bridge-file-version: #1
# My Comment
tag @s add battlehammafire

execute as @a[tag=battlehammafire] at @s run playsound wind_charge.burst @a[r=15] ~ ~ ~ 50 0.5
execute as @a[tag=battlehammafire] at @s run playsound fire.fire @a[r=10] ~ ~ ~
execute as @a[tag=battlehammafire] at @s run playsound mace.smash_ground @a[r=15] ~ ~ ~
execute as @a[tag=battlehammafire] at @s run effect @e[tag=!battlehammafire,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 1 1 true

execute as @e[tag=!battlehammafire,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 10 fire_tick

particle minecraft:basic_flame_particle ~1 ~ ~
particle minecraft:basic_flame_particle ~ ~ ~1
particle minecraft:basic_flame_particle ~ ~ ~-2
particle minecraft:basic_flame_particle ~-2 ~ ~

particle minecraft:basic_flame_particle ~ ~2 ~
particle minecraft:basic_flame_particle ~1 ~2 ~
particle minecraft:basic_flame_particle ~ ~2 ~1
particle minecraft:basic_flame_particle ~-2 ~2 ~
particle minecraft:basic_flame_particle ~ ~2 ~-2

particle minecraft:basic_flame_particle ~2 ~1 ~
particle minecraft:basic_flame_particle ~ ~1 ~2
particle minecraft:basic_flame_particle ~ ~1 ~-2.5
particle minecraft:basic_flame_particle ~-3 ~1 ~

particle minecraft:basic_flame_particle ~1 ~-1 ~
particle minecraft:basic_flame_particle ~ ~-1 ~1
particle minecraft:basic_flame_particle ~ ~-1 ~-2
particle minecraft:basic_flame_particle ~-2 ~-1 ~

particle minecraft:basic_flame_particle ~-2 ~ ~2
particle minecraft:basic_flame_particle ~-2 ~ ~-2
particle minecraft:basic_flame_particle ~1 ~ ~-1
particle minecraft:basic_flame_particle ~1 ~ ~1

particle minecraft:basic_flame_particle ~-2.5 ~ ~2.5
particle minecraft:basic_flame_particle ~-2.5 ~ ~-2.5
particle minecraft:basic_flame_particle ~1.5 ~ ~-1.5
particle minecraft:basic_flame_particle ~1.5 ~ ~1.5

particle minecraft:basic_flame_particle ~0.5 ~ ~
particle minecraft:basic_flame_particle ~ ~ ~0.5
particle minecraft:basic_flame_particle ~ ~ ~-1.5
particle minecraft:basic_flame_particle ~-1.5 ~ ~

particle minecraft:basic_flame_particle ~1.5 ~0.5 ~
particle minecraft:basic_flame_particle ~ ~0.5 ~1.5
particle minecraft:basic_flame_particle ~ ~0.5 ~-2.5
particle minecraft:basic_flame_particle ~-3 ~0.5 ~

particle minecraft:basic_flame_particle ~0.5 ~-0.5 ~
particle minecraft:basic_flame_particle ~ ~-0.5 ~0.5
particle minecraft:basic_flame_particle ~ ~-0.5 ~-1.5
particle minecraft:basic_flame_particle ~-1.5 ~-0.5 ~


particle minecraft:minecraft:smash_ground_particle ~ ~ ~
particle minecraft:dragon_death_explosion_emitter ~ ~ ~

effect @p fire_resistance 2 1 true
