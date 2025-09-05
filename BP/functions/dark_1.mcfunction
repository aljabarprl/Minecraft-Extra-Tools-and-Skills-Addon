#bridge-file-version: #1
# My Comment
tag @s add dark

execute as @a[tag=dark] at @s run playsound shriek.sculk_shrieker @a[r=15] ~ ~ ~    
execute as @a[tag=dark] at @s run playsound shriek.sculk_shrieker @a[r=15] ~ ~ ~
execute as @a[tag=dark] at @s run playsound shriek.sculk_shrieker @a[r=15] ~ ~ ~
execute as @a[tag=dark] at @s run playsound mace.smash_ground @a[r=15] ~ ~ ~ 60
execute as @a[tag=dark] at @s run effect @e[tag=!dark,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 3 255 true
execute as @a[tag=dark] at @s run effect @e[tag=!dark,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] blindness 4 1 true

execute as @e[tag=!dark,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run camera @s fade time 0.3 1 1 color 0 0 0
execute as @e[tag=!dark,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 4 magic

particle minecraft:wax_particle ~1 ~ ~
particle minecraft:wax_particle ~ ~ ~1
particle minecraft:wax_particle ~ ~ ~-2
particle minecraft:wax_particle ~-2 ~ ~

particle minecraft:wax_particle ~ ~2 ~
particle minecraft:wax_particle ~1 ~2 ~
particle minecraft:wax_particle ~ ~2 ~1
particle minecraft:wax_particle ~-2 ~2 ~
particle minecraft:wax_particle ~ ~2 ~-2

particle minecraft:wax_particle ~2 ~1 ~
particle minecraft:wax_particle ~ ~1 ~2
particle minecraft:wax_particle ~ ~1 ~-2.5
particle minecraft:wax_particle ~-3 ~1 ~

particle minecraft:wax_particle ~1 ~-1 ~
particle minecraft:wax_particle ~ ~-1 ~1
particle minecraft:wax_particle ~ ~-1 ~-2
particle minecraft:wax_particle ~-2 ~-1 ~

particle minecraft:wax_particle ~-2 ~ ~2
particle minecraft:wax_particle ~-2 ~ ~-2
particle minecraft:wax_particle ~1 ~ ~-1
particle minecraft:wax_particle ~1 ~ ~1

particle minecraft:wax_particle ~-2.5 ~ ~2.5
particle minecraft:wax_particle ~-2.5 ~ ~-2.5
particle minecraft:wax_particle ~1.5 ~ ~-1.5
particle minecraft:wax_particle ~1.5 ~ ~1.5

particle minecraft:wax_particle ~0.5 ~ ~
particle minecraft:wax_particle ~ ~ ~0.5
particle minecraft:wax_particle ~ ~ ~-1.5
particle minecraft:wax_particle ~-1.5 ~ ~

particle minecraft:wax_particle ~1.5 ~0.5 ~
particle minecraft:wax_particle ~ ~0.5 ~1.5
particle minecraft:wax_particle ~ ~0.5 ~-2.5
particle minecraft:wax_particle ~-3 ~0.5 ~

particle minecraft:wax_particle ~0.5 ~-0.5 ~
particle minecraft:wax_particle ~ ~-0.5 ~0.5
particle minecraft:wax_particle ~ ~-0.5 ~-1.5
particle minecraft:wax_particle ~-1.5 ~-0.5 ~

particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:cauldron_explosion_emitter ~ ~ ~ 
particle minecraft:wax_particle ~ ~0.4 ~

effect @p resistance 1 1 true
effect @p absorption 1 1 true