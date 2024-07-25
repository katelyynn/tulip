# tulip leveling
## level booster
## time loop


# professions
## mining
execute if score @s tulip_skill.mine.booster_time matches 1.. run scoreboard players remove @s tulip_skill.mine.booster_time 1
execute if score @s tulip_skill.mine.booster_time matches 0 run function tulip_skill:system/level/booster/mine/end
## fishing
execute if score @s tulip_skill.fish.booster_time matches 1.. run scoreboard players remove @s tulip_skill.fish.booster_time 1
execute if score @s tulip_skill.fish.booster_time matches 0 run function tulip_skill:system/level/booster/fish/end
## farming
execute if score @s tulip_skill.farm.booster_time matches 1.. run scoreboard players remove @s tulip_skill.farm.booster_time 1
execute if score @s tulip_skill.farm.booster_time matches 0 run function tulip_skill:system/level/booster/farm/end
## foraging
execute if score @s tulip_skill.wood.booster_time matches 1.. run scoreboard players remove @s tulip_skill.wood.booster_time 1
execute if score @s tulip_skill.wood.booster_time matches 0 run function tulip_skill:system/level/booster/wood/end
## combat
execute if score @s tulip_skill.combat.booster_time matches 1.. run scoreboard players remove @s tulip_skill.combat.booster_time 1
execute if score @s tulip_skill.combat.booster_time matches 0 run function tulip_skill:system/level/booster/combat/end