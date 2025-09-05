#bridge-file-version: #1
# My Comment
tag @s add darksword

execute as @a[tag=darksword] at @s run playsound shriek.sculk_shrieker @a[r=15] ~ ~ ~
execute as @a[tag=darksword] at @s run effect @e[tag=!darksword,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 1 255 true
execute as @a[tag=darksword] at @s run effect @e[tag=!darksword,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] blindness 3 1 true

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

particle minecraft:cauldron_explosion_emitter ~ ~ ~ 

effect @p resistance 2 1 true
effect @p absorption 2 1 true
