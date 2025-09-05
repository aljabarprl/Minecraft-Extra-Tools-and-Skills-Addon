#bridge-file-version: #1
# My Comment
tag @s add heaven

execute as @a[tag=heaven] at @s run playsound mob.allay.death @a[r=15] ~ ~ ~    
execute as @a[tag=heaven] at @s run playsound mob.wither.spawn @a[r=15] ~ ~ ~
execute as @a[tag=heaven] at @s run playsound note.chime @a[r=15] ~ ~ ~
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] slowness 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] mining_fatigue 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] weakness 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] poison 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] fatal_poison 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] wither 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] blindness 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] nausea 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] hunger 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] darkness 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] levitation 1 1 true
execute as @a[tag=heaven] at @s run effect @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=10] bad_omen 1 1 true

execute as @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run camera @s fade time 1 2 1 color 255 255 255
execute as @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 5 magic

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
particle minecraft:balloon_gas_particle ~ ~0.4 ~

tp @e[tag=!heaven,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] ~ ~660 ~ true

effect @p resistance 2 5 true
effect @p invisibility 2 1 true
effect @p slow_falling 1 1 true
effect @p absorption 2 5 true