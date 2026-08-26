execute as @a[predicate=acovia:can_be_damaged] at @s run damage @s 4 drown
schedule clear acovia:base/damage_in_rain
schedule function acovia:base/damage_in_rain 50
weather rain