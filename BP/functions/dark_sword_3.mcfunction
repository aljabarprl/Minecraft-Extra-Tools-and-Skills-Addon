execute as @e[hasitem=[{item=skill:dark_sword, location=slot.weapon.mainhand}]] run tag @s add darkwalksword
execute as @e[tag=darkwalksword] at @s run playsound shriek.sculk_shrieker @a[tag=!darkwalksword,r=4] ~ ~ ~ 0.01
execute as @e[hasitem=[{item=skill:dark_sword, location=slot.weapon.mainhand}]] at @s run effect @e[tag=!darkwalksword,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=6.5] slowness 2 1 true
execute as @e[hasitem=[{item=skill:dark_sword, location=slot.weapon.offhand}]] at @s run effect @e[tag=!darkwalksword,type=!armor_stand,type=!item,type=!xp_orb,type=!falling_block,r=6.5] slowness 2 1 true
execute as @e[tag=darkwalksword] unless entity @s[hasitem=[{item=skill:dark_sword, location=slot.weapon.mainhand}]] run tag @s remove darkwalksword