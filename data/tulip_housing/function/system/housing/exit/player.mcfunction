# tulip housing
## exit as player


# teleport to entry
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=!face.north,tag=!face.east,tag=!face.south,tag=!face.west] run tp @s ~ ~ ~
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.north] run tp @s ~ ~ ~-1.5 180 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.east] run tp @s ~1.5 ~ ~ 270 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.south] run tp @s ~ ~ ~1.5 0 0
execute at @e[tag=housing.entry,tag=housing.temporary_entry,tag=face.west] run tp @s ~-1.5 ~ ~ 90 0

# give player temporary timeout
tag @s add housing.player_timeout

# resistance
effect give @s minecraft:resistance 1 255 true

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have left the house.","color":"#EF9139"}]
# sfx
execute at @e[tag=housing.entry,tag=housing.temporary_entry] run playsound minecraft:block.wooden_door.close player @a