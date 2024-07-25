## quest 4 (Oscar's adventure)
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest finished! ","color":"gold"},{"text":"Oscar's adventure","color":"yellow"},{"text":"\n\nRewards:","color":"gold"}]
scoreboard players set @s quest_4 2
give @s minecraft:gold_nugget 10
tellraw @s {"text":"10x Gold Nugget","color":"yellow"}
give @s minecraft:emerald 1
tellraw @s {"text":"1x Emerald","color":"yellow"}
scoreboard players add @s tulip_skill.mine.progress 10
tellraw @s {"text":"10x Mining XP","color":"yellow"}
scoreboard players add @s tulip_skill.combat.progress 50
tellraw @s {"text":"50x Combat XP","color":"yellow"}
playsound minecraft:entity.player.levelup player @s
tellraw @s ""