# level up player
## Mining


function tulip_skill:system/level/up/generic

# reset progress
## accounts for extra XP after level-up
scoreboard players operation @s tulip_skill.mine.progress -= @s tulip_skill.mine.goal

# increase level
scoreboard players operation @s tulip_skill.mine += 1 tulip.defs

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Mining ","color":"gold","bold":true},{"score":{"name":"@s","objective":"tulip_skill.mine"},"color":"gold","bold":true}]