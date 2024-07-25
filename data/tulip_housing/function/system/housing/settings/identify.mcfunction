# identify house
scoreboard players operation temporary_settings_index housing.index = @s housing.index
execute as @e[tag=housing.location] if score @s housing.index = temporary_settings_index housing.index run tag @s add housing.temporary_settings