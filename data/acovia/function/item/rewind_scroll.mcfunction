advancement revoke @s only acovia:use_rewind_scroll
playsound item.totem.use player @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~ 0.5 1.0 0.5 0.3 256 force
effect give @s minecraft:blindness 1 0 true
execute in minecraft:overworld run fill 171 71 65 173 73 67 air
execute in minecraft:overworld run fill 171 70 65 173 70 67 obsidian
execute in minecraft:overworld run tp @s 172.50 72.00 66.50 0 0
