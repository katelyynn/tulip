## quest 2
# stats
clear @s emerald[minecraft:custom_data={linked_quest:2}] 1
scoreboard players set @s quest_2.completed 1
# sfx
playsound minecraft:entity.experience_orb.pickup player @s
# display
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"mfw bread","color":"yellow"},{"text":"\n\nCriteria:","color":"gold"}]
tellraw @s {"text":"Eat some bread","color":"white"}
tellraw @s ""