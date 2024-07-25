# tulip quests


# check if holding
execute unless data entity @s SelectedItem.components.minecraft:custom_data.linked_quest run scoreboard players set @s temp_store.player_item_is_quest 0
execute if data entity @s SelectedItem.components.minecraft:custom_data.linked_quest run scoreboard players set @s temp_store.player_item_is_quest 1

# detect quest id
execute store result score @s temp_store.player_item_quest_id run data get entity @s SelectedItem.components.minecraft:custom_data.linked_quest


## quest 1 (Cool quest)
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 1 if score @s quest_1.completed matches 1.. run function tulip_quest:system/quest/1/refund
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 1 unless score @s quest_1.completed matches 1.. run scoreboard players set @s quest_1 1
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 1 unless score @s quest_1.completed matches 1.. run function tulip_quest:system/quest/1/start
## quest 2 (mfw bread)
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 2 if score @s quest_2.completed matches 1.. run function tulip_quest:system/quest/2/refund
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 2 unless score @s quest_2.completed matches 1.. run scoreboard players set @s quest_2 1
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 2 unless score @s quest_2.completed matches 1.. run function tulip_quest:system/quest/2/start
## quest 3 (Ben's Lucky Sword)
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 3 if score @s quest_3.completed matches 1.. run function tulip_quest:system/quest/3/refund
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 3 unless score @s quest_3.completed matches 1.. run scoreboard players set @s quest_3 1
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 3 unless score @s quest_3.completed matches 1.. run function tulip_quest:system/quest/3/start
## quest 4 (Oscar's adventure)
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 4 if score @s quest_4.completed matches 1.. run function tulip_quest:system/quest/4/refund
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 4 unless score @s quest_4.completed matches 1.. run scoreboard players set @s quest_4 1
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 4 unless score @s quest_4.completed matches 1.. run function tulip_quest:system/quest/4/start
## quest 5 (Help the Baker)
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 5 if score @s quest_5.completed matches 1.. run function tulip_quest:system/quest/5/refund
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 5 unless score @s quest_5.completed matches 1.. run scoreboard players set @s quest_5 1
execute if score @s temp_store.player_item_is_quest matches 1.. if score @s temp_store.player_item_quest_id matches 5 unless score @s quest_5.completed matches 1.. run function tulip_quest:system/quest/5/start


## generated via quests.html