# tulip leveling
## level booster
## mining end


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"#B8E45A"},{"text":"] ","color":"dark_gray"},{"text":"Your x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine.booster"},"color":"#B8E45A"},{"text":" Mining XP booster has expired.","color":"#B8E45A"}]
# extras
function tulip_skill:system/level/booster/generic/end

# disable booster
scoreboard players reset @s tulip_skill.mine.booster
scoreboard players reset @s tulip_skill.mine.booster_time