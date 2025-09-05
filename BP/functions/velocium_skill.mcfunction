#bridge-file-version: #1
# My Comment

execute as @a[tag=speedy] at @s run playsound block.enchanting_table.use @a[r=10] ~ ~ ~
execute as @a[tag=speedy] at @s run playsound mob.blaze.hit @a[r=10] ~ ~ ~

execute as @e[tag=!speedy,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5] run damage @s[r=5] 11 lightning

execute as @e[tag=speedy] at @e[tag=!speedy,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=5,c=5] run summon lightning_bolt

particle minecraft:knockback_roar_particle ~1 ~ ~
particle minecraft:knockback_roar_particle ~ ~ ~1
particle minecraft:knockback_roar_particle ~ ~ ~-2
particle minecraft:knockback_roar_particle ~-2 ~ ~

particle minecraft:knockback_roar_particle ~ ~2 ~
particle minecraft:knockback_roar_particle ~1 ~2 ~
particle minecraft:knockback_roar_particle ~ ~2 ~1
particle minecraft:knockback_roar_particle ~-2 ~2 ~
particle minecraft:knockback_roar_particle ~ ~2 ~-2

particle minecraft:knockback_roar_particle ~2 ~1 ~
particle minecraft:knockback_roar_particle ~ ~1 ~2
particle minecraft:knockback_roar_particle ~ ~1 ~-2.5
particle minecraft:knockback_roar_particle ~-3 ~1 ~

particle minecraft:knockback_roar_particle ~1 ~-1 ~
particle minecraft:knockback_roar_particle ~ ~-1 ~1
particle minecraft:knockback_roar_particle ~ ~-1 ~-2
particle minecraft:knockback_roar_particle ~-2 ~-1 ~

particle minecraft:knockback_roar_particle ~-2 ~ ~2
particle minecraft:knockback_roar_particle ~-2 ~ ~-2
particle minecraft:knockback_roar_particle ~1 ~ ~-1
particle minecraft:knockback_roar_particle ~1 ~ ~1

particle minecraft:knockback_roar_particle ~-2.5 ~ ~2.5
particle minecraft:knockback_roar_particle ~-2.5 ~ ~-2.5
particle minecraft:knockback_roar_particle ~1.5 ~ ~-1.5
particle minecraft:knockback_roar_particle ~1.5 ~ ~1.5

particle minecraft:knockback_roar_particle ~0.5 ~ ~
particle minecraft:knockback_roar_particle ~ ~ ~0.5
particle minecraft:knockback_roar_particle ~ ~ ~-1.5
particle minecraft:knockback_roar_particle ~-1.5 ~ ~

particle minecraft:knockback_roar_particle ~1.5 ~0.5 ~
particle minecraft:knockback_roar_particle ~ ~0.5 ~1.5
particle minecraft:knockback_roar_particle ~ ~0.5 ~-2.5
particle minecraft:knockback_roar_particle ~-3 ~0.5 ~

particle minecraft:knockback_roar_particle ~0.5 ~-0.5 ~
particle minecraft:knockback_roar_particle ~ ~-0.5 ~0.5
particle minecraft:knockback_roar_particle ~ ~-0.5 ~-1.5
particle minecraft:knockback_roar_particle ~-1.5 ~-0.5 ~


particle minecraft:cauldron_explosion_emitter ~ ~ ~ 

effect @p fire_resistance 1 5 true
