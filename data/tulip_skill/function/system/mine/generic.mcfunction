# tulip generic ore loop


# teleport player up
execute as @a[distance=..0.7] at @s run tp @s ~ ~0.7 ~


# range check
execute unless score @s ore.state matches 1..3 run scoreboard players set @s ore.state 1

# ore present (state 1 -> 2)
execute if block ~ ~ ~ air if score @s ore.state matches 1 run function tulip_skill:system/mine/state_1

# cobblestone present (state 2 -> 3)
execute if block ~ ~ ~ air if score @s ore.state matches 2 run function tulip_skill:system/mine/state_2


# timer finished
execute if entity @s[tag=ore.coal_ore] if score @s ore.timer >= ore.coal_ore tulip.defs run function tulip_skill:system/mine/finish
execute if entity @s[tag=ore.iron_ore] if score @s ore.timer >= ore.iron_ore tulip.defs run function tulip_skill:system/mine/finish
execute if entity @s[tag=ore.gold_ore] if score @s ore.timer >= ore.gold_ore tulip.defs run function tulip_skill:system/mine/finish
execute if entity @s[tag=ore.diamond_ore] if score @s ore.timer >= ore.diamond_ore tulip.defs run function tulip_skill:system/mine/finish