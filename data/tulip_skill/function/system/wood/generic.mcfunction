# tulip generic wood loop


# range check
execute unless score @s wood.state matches 1..2 run scoreboard players set @s wood.state 1

# wood present (state 1 -> 2)
execute if block ~ ~ ~ air if score @s wood.state matches 1 run function tulip_skill:system/wood/state_1
execute if block ~ ~ ~ air if score @s wood.state matches 2 run fill ~ ~ ~ ~ ~ ~ oak_fence replace air


# timer finished
execute if entity @s[tag=wood.oak_log] if score @s wood.timer >= wood.oak_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.spruce_log] if score @s wood.timer >= wood.spruce_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.birch_log] if score @s wood.timer >= wood.birch_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.jungle_log] if score @s wood.timer >= wood.jungle_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.acacia_log] if score @s wood.timer >= wood.acacia_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.dark_oak_log] if score @s wood.timer >= wood.dark_oak_log tulip.defs run function tulip_skill:system/wood/finish
execute if entity @s[tag=wood.mangrove_log] if score @s wood.timer >= wood.mangrove_log tulip.defs run function tulip_skill:system/wood/finish