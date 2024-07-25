# level up player
## Farming


function tulip_skill:system/level/up/generic

# reset progress
## accounts for extra XP after level-up
scoreboard players operation @s tulip_skill.farm.progress -= @s tulip_skill.farm.goal

# increase level
scoreboard players operation @s tulip_skill.farm += 1 tulip.defs

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Farming ","color":"gold","bold":true},{"score":{"name":"@s","objective":"tulip_skill.farm"},"color":"gold","bold":true}]