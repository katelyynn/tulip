## quest 3
# stats
clear @s emerald[minecraft:custom_data={linked_quest:3}] 1
scoreboard players set @s quest_3.completed 1
# sfx
playsound minecraft:entity.experience_orb.pickup player @s
# display
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Ben's Lucky Sword","color":"yellow"},{"text":"\n\nCriteria:","color":"gold"}]
tellraw @s {"text":"Construct a beacon","color":"white"}
tellraw @s {"text":"Have a dive","color":"white"}
tellraw @s {"text":"Become a builder","color":"white"}
tellraw @s ""