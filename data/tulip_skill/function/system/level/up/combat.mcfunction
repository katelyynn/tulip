# level up player
## combat


function tulip_skill:system/level/up/generic

# reset progress
## accounts for extra XP after level-up
scoreboard players operation @s tulip_skill.combat.progress -= @s tulip_skill.combat.goal

# increase level
scoreboard players operation @s tulip_skill.combat += 1 tulip.defs

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"↑","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You leveled up to ","color":"yellow"},{"text":"Combat ","color":"gold","bold":true},{"score":{"name":"@s","objective":"tulip_skill.combat"},"color":"gold","bold":true}]