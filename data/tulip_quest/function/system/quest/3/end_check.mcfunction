## quest 3 (Ben's Lucky Sword)
execute if score @s quest_3 matches 1 run function tulip_quest:system/quest/3/end
execute unless score @s quest_3 matches 1 run advancement revoke @s only tulip_quest:quest_3