execute at @s anchored eyes run summon splash_potion ^ ^ ^1 {NoGravity:true,Tags:["Acovia"],Item:{id:"minecraft:heavy_core",components:{potion_contents:{custom_color:11468975,custom_name:"Magic",custom_effects:[{show_particles:true,amplifier:2,duration:240,id:"minecraft:wither"}]}}}}
execute at @s anchored eyes run summon marker ^ ^ ^-1 {Tags:["Acovia"]}
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 10000
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1] 10000
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 10000
execute as @n[type=splash_potion,tag=Acovia,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 10000
execute as @n[type=splash_potion,tag=Acovia,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1] 10000
execute as @n[type=splash_potion,tag=Acovia,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 10000
execute as @n[type=splash_potion,tag=Acovia] store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s x -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] x
execute as @n[type=splash_potion,tag=Acovia] store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s y -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] y
execute as @n[type=splash_potion,tag=Acovia] store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s z -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] z
kill @e[type=marker,tag=Acovia]
scoreboard players add @e[type=splash_potion,tag=Acovia] T 1
kill @e[type=splash_potion,tag=Acovia,scores={T=4..},limit=3,sort=nearest]
data modify entity @n[type=splash_potion,tag=Acovia,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @n[type=splash_potion,tag=Acovia] Rotation set from entity @s Rotation