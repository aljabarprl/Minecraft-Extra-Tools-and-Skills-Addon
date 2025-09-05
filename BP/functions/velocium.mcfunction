#bridge-file-version: #1
# My Comment

execute as @e[hasitem=[{item=skill:velocium,location=slot.weapon.mainhand}]] at @s run tag @s add speedy

testfor @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}]

effect @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] speed 3 50 false
effect @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] jump_boost 1 5 true
effect @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] strength 1 4 true
effect @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] regeneration 1 5 true

execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run particle minecraft:cauldron_explosion_emitter ~~0.2~
execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run particle minecraft:dust_plume ~~0.2~
execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run particle minecraft:electric_spark_particle ~~0.2~
execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run particle minecraft:knockback_roar_particle ~~1.5~

execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run playsound ambient.weather.thunder @a[r=20] ~~~ 0.060
execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run effect @e[tag=!speedy,r=6,c=5] slowness 1 2 true
execute as @a[tag=speedy,hasitem={item=skill:velocium,location=slot.weapon.mainhand}] at @s run effect @e[tag=!speedy,r=1.5,c=5] slowness 1 3 true

execute as @a[tag=speedy] at @s unless entity @s[hasitem={item=skill:velocium,location=slot.weapon.mainhand}] run effect @s clear speed
execute as @a[tag=speedy] at @s unless entity @s[hasitem={item=skill:velocium,location=slot.weapon.mainhand}] run effect @s clear jump_boost
execute as @a[tag=speedy] at @s unless entity @s[hasitem={item=skill:velocium,location=slot.weapon.mainhand}] run effect @s clear strength








execute as @e[tag=speedy] unless entity @s[hasitem=[{item=skill:velocium, location=slot.weapon.mainhand}]] run tag @s remove speedy