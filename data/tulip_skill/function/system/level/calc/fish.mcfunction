# show player's level
## fishing


# calc level goal
## store temp value for calc
scoreboard players operation @s tulip_skill.fish.goal_calc = @s tulip_skill.fish
## 100n
scoreboard players operation @s tulip_skill.fish.goal_calc *= multiply tulip_skill.goal
## +400
scoreboard players operation @s tulip_skill.fish.goal_calc += addition tulip_skill.goal
## save (final)
scoreboard players operation @s tulip_skill.fish.goal = @s tulip_skill.fish.goal_calc