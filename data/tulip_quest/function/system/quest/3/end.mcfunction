## quest 3 (Ben's Lucky Sword)
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"Ben's Lucky Sword","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
scoreboard players set @s quest_3 2
give @s minecraft:barrier 10
tellraw @s {"text":"10x Barrier","color":"yellow"}
give @s minecraft:structure_void 1
tellraw @s {"text":"1x Structure Void","color":"yellow"}
give @s minecraft:leather_boots 1
tellraw @s {"text":"1x Leather Boots","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""