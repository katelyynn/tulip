## quest 2 (mfw bread)
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"mfw bread","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
scoreboard players set @s quest_2 2
give @s minecraft:bread 128
tellraw @s {"text":"128x Bread","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""