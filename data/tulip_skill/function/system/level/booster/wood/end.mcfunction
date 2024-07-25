# tulip leveling
## level booster
## foraging end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood.booster"},"color":"#B8E45A"},{"text":" Foraging XP booster has expired.","color":"#B8E45A"}]
# extras
function tulip_skill:system/level/booster/generic/end

# disable booster
scoreboard players reset @s tulip_skill.wood.booster
scoreboard players reset @s tulip_skill.wood.booster_time