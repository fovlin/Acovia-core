execute at @s anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:3,Tags:["Acovia"]}
execute at @s anchored eyes run summon marker ^ ^ ^-2 {Tags:["Acovia"]}
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 10000
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1] 10000
execute as @n[type=marker,tag=Acovia,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 10000
execute as @n[type=fireball,tag=Acovia,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0] 10000
execute as @n[type=fireball,tag=Acovia,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1] 10000
execute as @n[type=fireball,tag=Acovia,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2] 10000
execute as @n[type=fireball,tag=Acovia] store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s x -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] x
execute as @n[type=fireball,tag=Acovia] store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s y -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] y
execute as @n[type=fireball,tag=Acovia] store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s z -= @n[type=marker,tag=Acovia,limit=1,sort=nearest] z
kill @e[type=marker,tag=Acovia,limit=3]
scoreboard players add @e[type=fireball,tag=Acovia] T 1
kill @e[type=fireball,tag=Acovia,scores={T=4..},limit=3,sort=nearest]
data modify entity @n[type=fireball,tag=Acovia,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @n[type=fireball,tag=Acovia] Rotation set from entity @s Rotation