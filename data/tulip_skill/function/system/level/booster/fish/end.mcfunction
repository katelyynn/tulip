# tulip leveling
## level booster
## fishing end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish.booster"},"color":"#B8E45A"},{"text":" Fishing XP booster has expired.","color":"#B8E45A"}]
# extras
function tulip_skill:system/level/booster/generic/end

# disable booster
scoreboard players reset @s tulip_skill.fish.booster
scoreboard players reset @s tulip_skill.fish.booster_time