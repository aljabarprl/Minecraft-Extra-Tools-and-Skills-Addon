#bridge-file-version: #1
# My Comment
tag @s add battlehamma

execute as @a[tag=battlehamma] at @s run playsound wind_charge.burst @a[r=15] ~ ~ ~ 50 0.5
execute as @a[tag=battlehamma] at @s run playsound mace.smash_ground @a[r=15] ~ ~ ~
execute as @a[tag=battlehamma] at @s run effect @e[tag=!battlehamma,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 1 1 true

execute as @e[tag=!battlehamma,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s 10


particle minecraft:minecraft:smash_ground_particle ~ ~ ~
particle minecraft:dragon_death_explosion_emitter ~ ~ ~

