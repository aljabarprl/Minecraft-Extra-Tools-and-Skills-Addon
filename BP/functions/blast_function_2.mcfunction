#bridge-file-version: #1
# My Comment
# Pasa Std.
tag @s add blast

execute as @a[tag=blast] at @s run playsound random.explode @a[r=15] ~ ~ ~
execute as @a[tag=blast] at @s run playsound random.fizz @a[r=15] ~ ~ ~ 10 0.5
execute as @a[tag=blast] at @s run playsound mace.heavy_smash_ground @a[r=15] ~ ~ ~ 5
execute as @a[tag=blast] at @s run effect @e[tag=!blast,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=8,c=10] slowness 2 2 true

summon creeper ~ ~ ~ facing @s minecraft:start_exploding_forced
effect @e[type=creeper, r=3] resistance infinite 255 true
effect @e[type=creeper, r=3] invisibility infinite 1 true

execute as @e[tag=!blast,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=8] run damage @s 40 entity_explosion

particle minecraft:smash_ground_particle_center ~ ~ ~
particle minecraft:large_explosion ~ ~1 ~
particle minecraft:dragon_death_explosion_emitter ~ ~ ~
particle minecraft:huge_explosion_emitter ~ ~ ~

effect @p resistance 5 5 true
effect @p absorption 2 2 true
