execute as @e[hasitem=[{item=skill:battle_axe_limitless, location=slot.weapon.mainhand}]] run tag @s add darkwalk
effect @e[hasitem=[{item=skill:battle_axe_limitless,location=slot.weapon.mainhand}]] strength 1 3 true
effect @e[hasitem=[{item=skill:battle_axe_limitless,location=slot.weapon.offhand}]] strength 1 3 true
execute as @e[hasitem=[{item=skill:battle_axe_limitless,location=slot.weapon.mainhand}]] at @s run particle minecraft:wax_particle ~ ~0.0 ~
execute as @e[tag=darkwalk] at @s run playsound shriek.sculk_shrieker @a[tag=!darkwalk,r=5] ~ ~ ~ 0.01
execute as @e[hasitem=[{item=skill:battle_axe_limitless, location=slot.weapon.mainhand}]] at @s run effect @e[tag=!darkwalk,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=7] darkness 2 255 true
execute as @e[hasitem=[{item=skill:battle_axe_limitless, location=slot.weapon.offhand}]] at @s run effect @e[tag=!darkwalk,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=7] darkness 2 255 true
execute as @e[tag=darkwalk] unless entity @s[hasitem=[{item=skill:battle_axe_limitless, location=slot.weapon.mainhand}]] run tag @s remove darkwalk