# range check for player level


execute unless score @s tulip_skill.mine matches 1.. run scoreboard players set @s tulip_skill.mine 1
execute unless score @s tulip_skill.fish matches 1.. run scoreboard players set @s tulip_skill.fish 1
execute unless score @s tulip_skill.wood matches 1.. run scoreboard players set @s tulip_skill.wood 1
execute unless score @s tulip_skill.farm matches 1.. run scoreboard players set @s tulip_skill.farm 1
execute unless score @s tulip_skill.food matches 1.. run scoreboard players set @s tulip_skill.food 1
execute unless score @s tulip_skill.combat matches 1.. run scoreboard players set @s tulip_skill.combat 1

execute unless score @s tulip_skill.mine.progress matches 1.. run scoreboard players set @s tulip_skill.mine.progress 0
execute unless score @s tulip_skill.fish.progress matches 1.. run scoreboard players set @s tulip_skill.fish.progress 0
execute unless score @s tulip_skill.wood.progress matches 1.. run scoreboard players set @s tulip_skill.wood.progress 0
execute unless score @s tulip_skill.farm.progress matches 1.. run scoreboard players set @s tulip_skill.farm.progress 0
execute unless score @s tulip_skill.food.progress matches 1.. run scoreboard players set @s tulip_skill.food.progress 0
execute unless score @s tulip_skill.combat.progress matches 1.. run scoreboard players set @s tulip_skill.combat.progress 0