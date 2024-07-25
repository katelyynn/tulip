# show player's level
## mining


# calc level goal
## store temp value for calc
scoreboard players operation @s tulip_skill.mine.goal_calc = @s tulip_skill.mine
## 100n
scoreboard players operation @s tulip_skill.mine.goal_calc *= multiply tulip_skill.goal
## +400
scoreboard players operation @s tulip_skill.mine.goal_calc += addition tulip_skill.goal
## save (final)
scoreboard players operation @s tulip_skill.mine.goal = @s tulip_skill.mine.goal_calc