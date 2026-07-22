scoreboard players add @a minus 1
execute as @a if score @s minus matches 60.. run scoreboard players add @s time 1
execute as @a if score @s minus matches 60.. run scoreboard players set @s minus 0
schedule clear acovia:set_data/time_add
schedule function acovia:set_data/time_add 1200