# tulip generic farm finish


# reset blocks
execute if entity @s[tag=farm.wheat] run setblock ~ ~ ~ wheat[age=7]
execute if entity @s[tag=farm.carrot] run setblock ~ ~ ~ carrots[age=7]
execute if entity @s[tag=farm.potato] run setblock ~ ~ ~ potatoes[age=7]

# create particle & sfx
particle minecraft:block{block_state:"minecraft:hay_block"} ~ ~ ~ 0 0.7 0 0.12 1
playsound minecraft:entity.armadillo.brush player @a ~ ~ ~ 0.4

# reset scores
scoreboard players set @s farm.state 1
scoreboard players reset @s farm.timer
tag @s remove farm.timer