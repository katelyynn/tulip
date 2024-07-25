## quest 1 (Cool quest)
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"Cool quest","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
scoreboard players set @s quest_1 2
give @s minecraft:gold_nugget 64
tellraw @s {"text":"64x Gold Nugget","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""