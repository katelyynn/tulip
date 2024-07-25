## quest 4
# stats
clear @s nether_star[minecraft:custom_data={linked_quest:4}] 1
scoreboard players set @s quest_4.completed 1
# sfx
playsound minecraft:entity.experience_orb.pickup player @s
# display
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Quest started! ","color":"gold"},{"text":"Oscar's adventure","color":"yellow"},{"text":"\n\nCriteria:","color":"gold"}]
tellraw @s {"text":"Collect 5 sticks","color":"white"}
tellraw @s {"text":"Meet back up with Oscar","color":"white"}
tellraw @s ""