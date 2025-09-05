#bridge-file-version: #1
# My Comment
tag @s add hydro

execute as @a[tag=hydro] at @s run playsound bubble.up @a[r=15] ~ ~ ~
execute as @a[tag=hydro] at @s run playsound bubble.upinside @a[r=10] ~ ~ ~
execute as @a[tag=hydro] at @s run playsound conduit.short @a[r=15] ~ ~ ~ 
execute as @a[tag=hydro] at @s run playsound mace.smash_ground @a[r=15] ~ ~ ~ 30

execute as @e[tag=!hydro,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 10 drowning 

particle minecraft:water_splash_particle ~1 ~ ~
particle minecraft:water_splash_particle ~ ~ ~1
particle minecraft:water_splash_particle ~ ~ ~-2
particle minecraft:water_splash_particle ~-2 ~ ~

particle minecraft:water_splash_particle ~ ~2 ~
particle minecraft:water_splash_particle ~1 ~2 ~
particle minecraft:water_splash_particle ~ ~2 ~1
particle minecraft:water_splash_particle ~-2 ~2 ~
particle minecraft:water_splash_particle ~ ~2 ~-2

particle minecraft:water_splash_particle ~2 ~1 ~
particle minecraft:water_splash_particle ~ ~1 ~2
particle minecraft:water_splash_particle ~ ~1 ~-2.5
particle minecraft:water_splash_particle ~-3 ~1 ~

particle minecraft:water_splash_particle ~1 ~-1 ~
particle minecraft:water_splash_particle ~ ~-1 ~1
particle minecraft:water_splash_particle ~ ~-1 ~-2
particle minecraft:water_splash_particle ~-2 ~-1 ~

particle minecraft:water_splash_particle ~-2 ~ ~2
particle minecraft:water_splash_particle ~-2 ~ ~-2
particle minecraft:water_splash_particle ~1 ~ ~-1
particle minecraft:water_splash_particle ~1 ~ ~1

particle minecraft:water_splash_particle ~-2.5 ~ ~2.5
particle minecraft:water_splash_particle ~-2.5 ~ ~-2.5
particle minecraft:water_splash_particle ~1.5 ~ ~-1.5
particle minecraft:water_splash_particle ~1.5 ~ ~1.5

particle minecraft:water_splash_particle ~0.5 ~ ~
particle minecraft:water_splash_particle ~ ~ ~0.5
particle minecraft:water_splash_particle ~ ~ ~-1.5
particle minecraft:water_splash_particle ~-1.5 ~ ~

particle minecraft:water_splash_particle ~1.5 ~0.5 ~
particle minecraft:water_splash_particle ~ ~0.5 ~1.5
particle minecraft:water_splash_particle ~ ~0.5 ~-2.5
particle minecraft:water_splash_particle ~-3 ~0.5 ~

particle minecraft:water_splash_particle ~0.5 ~-0.5 ~
particle minecraft:water_splash_particle ~ ~-0.5 ~0.5
particle minecraft:water_splash_particle ~ ~-0.5 ~-1.5
particle minecraft:water_splash_particle ~-1.5 ~-0.5 ~


particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:water_evaporation_bucket_emitter ~ ~2 ~

effect @p fire_resistance 2 1 true
