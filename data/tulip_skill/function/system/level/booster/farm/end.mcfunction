# tulip leveling
## level booster
## farming end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm.booster"},"color":"#B8E45A"},{"text":" Farming XP booster has expired.","color":"#B8E45A"}]
# extras
function tulip_skill:system/level/booster/generic/end

# disable booster
scoreboard players reset @s tulip_skill.farm.booster
scoreboard players reset @s tulip_skill.farm.booster_time