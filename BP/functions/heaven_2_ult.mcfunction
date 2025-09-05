#bridge-file-version: #1
# My Comment
tag @s add heavenult

execute as @a[tag=heavenult] at @s run playsound mob.allay.death @a[r=15] ~ ~ ~
execute as @a[tag=heavenult] at @s run playsound note.chime @a[r=15] ~ ~ ~
execute as @a[tag=heavenult] at @s run playsound mob.evocation_illager.prepare_attack @a[r=15] ~ ~ ~
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 6 1 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] mining_fatigue 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] weakness 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] poison 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] fatal_poison 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] wither 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] blindness 1 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] nausea 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] hunger 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] darkness 1 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] levitation 7 3 true
execute as @a[tag=heavenult] at @s run effect @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] bad_omen 7 3 true

execute as @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=50] run camera @s fade time 1 2 1 color 255 255 255
execute as @e[tag=heavenult] run camera @s fade time 0.3 0.1 0.4 color 255 255 255
execute as @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 15 magic

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


particle minecraft:balloon_gas_particle ~1 ~ ~
particle minecraft:balloon_gas_particle ~ ~ ~1
particle minecraft:balloon_gas_particle ~ ~ ~-2
particle minecraft:balloon_gas_particle ~-2 ~ ~

particle minecraft:balloon_gas_particle ~ ~2 ~
particle minecraft:balloon_gas_particle ~1 ~2 ~
particle minecraft:balloon_gas_particle ~ ~2 ~1
particle minecraft:balloon_gas_particle ~-2 ~2 ~
particle minecraft:balloon_gas_particle ~ ~2 ~-2

particle minecraft:balloon_gas_particle ~2 ~1 ~
particle minecraft:balloon_gas_particle ~ ~1 ~2
particle minecraft:balloon_gas_particle ~ ~1 ~-2.5
particle minecraft:balloon_gas_particle ~-3 ~1 ~

particle minecraft:balloon_gas_particle ~1 ~-1 ~
particle minecraft:balloon_gas_particle ~ ~-1 ~1
particle minecraft:balloon_gas_particle ~ ~-1 ~-2
particle minecraft:balloon_gas_particle ~-2 ~-1 ~

particle minecraft:balloon_gas_particle ~-2 ~ ~2
particle minecraft:balloon_gas_particle ~-2 ~ ~-2
particle minecraft:balloon_gas_particle ~1 ~ ~-1
particle minecraft:balloon_gas_particle ~1 ~ ~1

particle minecraft:balloon_gas_particle ~-2.5 ~ ~2.5
particle minecraft:balloon_gas_particle ~-2.5 ~ ~-2.5
particle minecraft:balloon_gas_particle ~1.5 ~ ~-1.5
particle minecraft:balloon_gas_particle ~1.5 ~ ~1.5

particle minecraft:balloon_gas_particle ~0.5 ~ ~
particle minecraft:balloon_gas_particle ~ ~ ~0.5
particle minecraft:balloon_gas_particle ~ ~ ~-1.5
particle minecraft:balloon_gas_particle ~-1.5 ~ ~

particle minecraft:balloon_gas_particle ~1.5 ~0.5 ~
particle minecraft:balloon_gas_particle ~ ~0.5 ~1.5
particle minecraft:balloon_gas_particle ~ ~0.5 ~-2.5
particle minecraft:balloon_gas_particle ~-3 ~0.5 ~

particle minecraft:balloon_gas_particle ~0.5 ~-0.5 ~
particle minecraft:balloon_gas_particle ~ ~-0.5 ~0.5
particle minecraft:balloon_gas_particle ~ ~-0.5 ~-1.5
particle minecraft:balloon_gas_particle ~-1.5 ~-0.5 ~


particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:cauldron_explosion_emitter ~ ~ ~ 

tp @e[tag=!heavenult,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] ~ ~-300 ~

effect @p resistance 2 1 true
effect @p invisibility 3 1 true
effect @p slow_falling 1 1 true
effect @p absorption 2 2 true
