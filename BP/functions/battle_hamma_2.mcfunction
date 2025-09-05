#bridge-file-version: #1
# My Comment
tag @s add battlehamma

execute as @a[tag=battlehamma] at @s run playsound breeze_wind_charge.burst @a[r=15] ~ ~ ~ 50 0.5
execute as @a[tag=battlehamma] at @s run playsound random.fizz @a[r=15] ~ ~ ~ 30 0.5
execute as @a[tag=battlehamma] at @s run playsound mace.heavy_smash_ground @a[r=15] ~ ~ ~
execute as @a[tag=battlehamma] at @s run effect @e[tag=!battlehamma,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 2 1 true

tp @e[tag=!battlehamma,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] ~ ~2 ~ true

execute as @e[tag=!battlehamma,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s 25


particle minecraft:minecraft:smash_ground_particle_center ~ ~ ~
particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:large_explosion ~ ~1 ~

effect @p resistance 5 5 true
effect @p absorption 2 2 true
