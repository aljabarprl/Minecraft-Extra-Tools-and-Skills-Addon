#bridge-file-version: #1
# My Comment
tag @s add end

execute as @a[tag=end] at @s run playsound random.fizz @a[r=15] ~ ~ ~ 10
execute as @a[tag=end] at @s run playsound mob.endermen.portal @a[r=15] ~ ~ ~

tp @e[tag=!end,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=10] ~ ~8 ~ true


particle minecraft:mob_portal ~1 ~ ~
particle minecraft:mob_portal ~ ~ ~1
particle minecraft:mob_portal ~ ~ ~-2
particle minecraft:mob_portal ~-2 ~ ~

particle minecraft:mob_portal ~ ~2 ~
particle minecraft:mob_portal ~1 ~2 ~
particle minecraft:mob_portal ~ ~2 ~1
particle minecraft:mob_portal ~-2 ~2 ~
particle minecraft:mob_portal ~ ~2 ~-2

particle minecraft:mob_portal ~2 ~1 ~
particle minecraft:mob_portal ~ ~1 ~2
particle minecraft:mob_portal ~ ~1 ~-2.5
particle minecraft:mob_portal ~-3 ~1 ~

particle minecraft:mob_portal ~1 ~-1 ~
particle minecraft:mob_portal ~ ~-1 ~1
particle minecraft:mob_portal ~ ~-1 ~-2
particle minecraft:mob_portal ~-2 ~-1 ~

particle minecraft:mob_portal ~-2 ~ ~2
particle minecraft:mob_portal ~-2 ~ ~-2
particle minecraft:mob_portal ~1 ~ ~-1
particle minecraft:mob_portal ~1 ~ ~1

particle minecraft:mob_portal ~-2.5 ~ ~2.5
particle minecraft:mob_portal ~-2.5 ~ ~-2.5
particle minecraft:mob_portal ~1.5 ~ ~-1.5
particle minecraft:mob_portal ~1.5 ~ ~1.5

particle minecraft:mob_portal ~0.5 ~ ~
particle minecraft:mob_portal ~ ~ ~0.5
particle minecraft:mob_portal ~ ~ ~-1.5
particle minecraft:mob_portal ~-1.5 ~ ~

particle minecraft:mob_portal ~1.5 ~0.5 ~
particle minecraft:mob_portal ~ ~0.5 ~1.5
particle minecraft:mob_portal ~ ~0.5 ~-2.5
particle minecraft:mob_portal ~-3 ~0.5 ~

particle minecraft:mob_portal ~0.5 ~-0.5 ~
particle minecraft:mob_portal ~ ~-0.5 ~0.5
particle minecraft:mob_portal ~ ~-0.5 ~-1.5
particle minecraft:mob_portal ~-1.5 ~-0.5 ~

