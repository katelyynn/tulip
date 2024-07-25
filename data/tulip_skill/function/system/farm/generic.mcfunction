# tulip generic farm loop


# replace farmland
execute unless block ~ ~-1 ~ farmland[moisture=7] run setblock ~ ~-1 ~ farmland[moisture=7]


# range check
execute unless score @s farm.state matches 1..3 run scoreboard players set @s farm.state 1

# ore present (state 1 -> 2)
execute if block ~ ~ ~ air if score @s farm.state matches 1 run function tulip_skill:system/farm/state_1


# timer finished
execute if entity @s[tag=farm.wheat] if score @s farm.timer >= farm.wheat tulip.defs run function tulip_skill:system/farm/finish
execute if entity @s[tag=farm.carrot] if score @s farm.timer >= farm.wheat tulip.defs run function tulip_skill:system/farm/finish
execute if entity @s[tag=farm.potato] if score @s farm.timer >= farm.wheat tulip.defs run function tulip_skill:system/farm/finish