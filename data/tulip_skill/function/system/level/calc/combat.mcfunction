# show player's level
## combat


# calc level goal
## store temp value for calc
scoreboard players operation @s tulip_skill.combat.goal_calc = @s tulip_skill.combat
## 100n
scoreboard players operation @s tulip_skill.combat.goal_calc *= multiply tulip_skill.goal
## +400
scoreboard players operation @s tulip_skill.combat.goal_calc += addition tulip_skill.goal
## save (final)
scoreboard players operation @s tulip_skill.combat.goal = @s tulip_skill.combat.goal_calc