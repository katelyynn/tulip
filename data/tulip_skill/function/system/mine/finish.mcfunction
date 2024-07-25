# tulip generic ore finish


# reset blocks
execute if entity @s[tag=ore.coal_ore] run setblock ~ ~ ~ coal_ore
execute if entity @s[tag=ore.iron_ore] run setblock ~ ~ ~ iron_ore
execute if entity @s[tag=ore.gold_ore] run setblock ~ ~ ~ gold_ore
execute if entity @s[tag=ore.diamond_ore] run setblock ~ ~ ~ diamond_ore

# create particle & sfx
particle minecraft:flame ~ ~ ~ 0 0 0 0.09 2
playsound block.stone.fall block @a

# reset scores
scoreboard players set @s ore.state 1
scoreboard players reset @s ore.timer
tag @s remove ore.timer