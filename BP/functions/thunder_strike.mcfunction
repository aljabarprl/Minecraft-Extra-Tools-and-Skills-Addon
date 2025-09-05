#bridge-file-version: #1
# My Comment
# Pasa Std.

effect @p resistance 1 5 true
effect @p fire_resistance 2 1 true

execute as @p[tag=userpetir] at @s run summon lightning_bolt ^^^3
execute as @p[tag=userpetir] at @s run particle minecraft:knockback_roar_particle ~ ~1.5 ~