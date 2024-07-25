## quest 5 (Help the Baker)
# stats
clear @s nether_star[minecraft:custom_data={linked_quest:5}] 1
scoreboard players set @s quest_5.completed 1
# sfx
playsound minecraft:entity.experience_orb.pickup player @s
# display
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Help the Baker","color":"yellow"},{"text":"\n\nCriteria:","color":"gold"}]
tellraw @s {"text":"Retrieve 32 Coal","color":"white"}
tellraw @s ""