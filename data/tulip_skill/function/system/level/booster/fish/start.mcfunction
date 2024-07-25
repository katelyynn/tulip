# tulip leveling
## level booster
## fishing start


# enable booster
scoreboard players operation @s tulip_skill.fish.booster = @s temp_store.player_item_booster_multiplier
scoreboard players operation @s tulip_skill.fish.booster_time = @s temp_store.player_item_booster_length

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"You have activated a x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish.booster"},"color":"#B8E45A"},{"text":" Fishing XP booster!","color":"#B8E45A"}]
# extras
function tulip_skill:system/level/booster/generic/start