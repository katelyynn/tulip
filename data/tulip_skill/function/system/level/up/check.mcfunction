# check if player can level up


## mining
execute if score @s tulip_skill.mine.progress >= @s tulip_skill.mine.goal at @s run function tulip_skill:system/level/up/mine
## fishing
execute if score @s tulip_skill.fish.progress >= @s tulip_skill.fish.goal at @s run function tulip_skill:system/level/up/fish
## farming
execute if score @s tulip_skill.farm.progress >= @s tulip_skill.farm.goal at @s run function tulip_skill:system/level/up/farm
## foraging
execute if score @s tulip_skill.wood.progress >= @s tulip_skill.wood.goal at @s run function tulip_skill:system/level/up/wood
## combat
execute if score @s tulip_skill.combat.progress >= @s tulip_skill.combat.goal at @s run function tulip_skill:system/level/up/combat