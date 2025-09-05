#bridge-file-version: #1
# My Comment
# Pasa Std.
tag @s add fire

execute as @a[tag=fire] at @s run playsound mace.heavy_smash_ground @a[r=15] ~ ~ ~
execute as @a[tag=fire] at @s run playsound random.fizz @a[r=15] ~ ~ ~ 
execute as @a[tag=fire] at @s run playsound fire.fire @a[r=10] ~ ~ ~
execute at @e[tag=!fire,type=!item,type=!xp_orb,type=!armor_stand,type=!falling_block,r=5] run damage @s[tag=!fire,r=5] 26 fire_tick


particle minecraft:lava_particle ~1 ~ ~
particle minecraft:lava_particle ~ ~ ~1
particle minecraft:lava_particle ~ ~ ~-2
particle minecraft:lava_particle ~-2 ~ ~

particle minecraft:lava_particle ~ ~2 ~
particle minecraft:lava_particle ~1 ~2 ~
particle minecraft:lava_particle ~ ~2 ~1
particle minecraft:lava_particle ~-2 ~2 ~
particle minecraft:lava_particle ~ ~2 ~-2

particle minecraft:lava_particle ~2 ~1 ~
particle minecraft:lava_particle ~ ~1 ~2
particle minecraft:lava_particle ~ ~1 ~-2.5
particle minecraft:lava_particle ~-3 ~1 ~

particle minecraft:lava_particle ~1 ~-1 ~
particle minecraft:lava_particle ~ ~-1 ~1
particle minecraft:lava_particle ~ ~-1 ~-2
particle minecraft:lava_particle ~-2 ~-1 ~

particle minecraft:lava_particle ~-2 ~ ~2
particle minecraft:lava_particle ~-2 ~ ~-2
particle minecraft:lava_particle ~1 ~ ~-1
particle minecraft:lava_particle ~1 ~ ~1

particle minecraft:lava_particle ~-2.5 ~ ~2.5
particle minecraft:lava_particle ~-2.5 ~ ~-2.5
particle minecraft:lava_particle ~1.5 ~ ~-1.5
particle minecraft:lava_particle ~1.5 ~ ~1.5

particle minecraft:lava_particle ~0.5 ~ ~
particle minecraft:lava_particle ~ ~ ~0.5
particle minecraft:lava_particle ~ ~ ~-1.5
particle minecraft:lava_particle ~-1.5 ~ ~

particle minecraft:lava_particle ~1.5 ~0.5 ~
particle minecraft:lava_particle ~ ~0.5 ~1.5
particle minecraft:lava_particle ~ ~0.5 ~-2.5
particle minecraft:lava_particle ~-3 ~0.5 ~

particle minecraft:lava_particle ~0.5 ~-0.5 ~
particle minecraft:lava_particle ~ ~-0.5 ~0.5
particle minecraft:lava_particle ~ ~-0.5 ~-1.5
particle minecraft:lava_particle ~-1.5 ~-0.5 ~


particle minecraft:dragon_death_explosion_emitter ~ ~ ~

effect @p fire_resistance 8 5 true
effect @p resistance 4 5 true
effect @p absorption 2 1 true