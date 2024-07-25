# tulip generic wood finish


# reset blocks
## y axis
execute if entity @s[tag=wood.oak_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ oak_log
execute if entity @s[tag=wood.spruce_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ spruce_log
execute if entity @s[tag=wood.birch_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ birch_log
execute if entity @s[tag=wood.jungle_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ jungle_log
execute if entity @s[tag=wood.acacia_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ acacia_log
execute if entity @s[tag=wood.dark_oak_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ dark_oak_log
execute if entity @s[tag=wood.mangrove_log,tag=!wood.axis_x,tag=!wood.axis_z] run setblock ~ ~ ~ mangrove_log
## x axis
execute if entity @s[tag=wood.oak_log,tag=wood.axis_x] run setblock ~ ~ ~ oak_log[axis=x]
execute if entity @s[tag=wood.spruce_log,tag=wood.axis_x] run setblock ~ ~ ~ spruce_log[axis=x]
execute if entity @s[tag=wood.birch_log,tag=wood.axis_x] run setblock ~ ~ ~ birch_log[axis=x]
execute if entity @s[tag=wood.jungle_log,tag=wood.axis_x] run setblock ~ ~ ~ jungle_log[axis=x]
execute if entity @s[tag=wood.acacia_log,tag=wood.axis_x] run setblock ~ ~ ~ acacia_log[axis=x]
execute if entity @s[tag=wood.dark_oak_log,tag=wood.axis_x] run setblock ~ ~ ~ dark_oak_log[axis=x]
execute if entity @s[tag=wood.mangrove_log,tag=wood.axis_x] run setblock ~ ~ ~ mangrove_log[axis=x]
## z axis
execute if entity @s[tag=wood.oak_log,tag=wood.axis_z] run setblock ~ ~ ~ oak_log[axis=z]
execute if entity @s[tag=wood.spruce_log,tag=wood.axis_z] run setblock ~ ~ ~ spruce_log[axis=z]
execute if entity @s[tag=wood.birch_log,tag=wood.axis_z] run setblock ~ ~ ~ birch_log[axis=z]
execute if entity @s[tag=wood.jungle_log,tag=wood.axis_z] run setblock ~ ~ ~ jungle_log[axis=z]
execute if entity @s[tag=wood.acacia_log,tag=wood.axis_z] run setblock ~ ~ ~ acacia_log[axis=z]
execute if entity @s[tag=wood.dark_oak_log,tag=wood.axis_z] run setblock ~ ~ ~ dark_oak_log[axis=z]
execute if entity @s[tag=wood.mangrove_log,tag=wood.axis_z] run setblock ~ ~ ~ mangrove_log[axis=z]

# create particle & sfx
particle minecraft:block{block_state:"minecraft:oak_log"} ~ ~ ~ 0 0 0 0.12 2
playsound block.wood.fall block @a

# reset scores
scoreboard players set @s wood.state 1
scoreboard players reset @s wood.timer
tag @s remove wood.timer