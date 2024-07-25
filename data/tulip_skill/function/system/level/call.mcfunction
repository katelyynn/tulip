# call player's skill in trigger


# header
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"♦","color":"yellow"},{"text":"] ","color":"dark_gray"},{"text":"Your skills\n","color":"yellow"}]
# professions
## mining
execute unless score @s tulip_skill.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.mine"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.mine.booster matches 2.. run tellraw @s ["",{"text":"Mining ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.mine.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.mine.booster"},"color":"#B8E45A"}]
## fishing
execute unless score @s tulip_skill.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.fish"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.fish.booster matches 2.. run tellraw @s ["",{"text":"Fishing ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.fish.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.fish.booster"},"color":"#B8E45A"}]
## farming
execute unless score @s tulip_skill.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.farm"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.farm.booster matches 2.. run tellraw @s ["",{"text":"Farming ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.farm.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.farm.booster"},"color":"#B8E45A"}]
## foraging
execute unless score @s tulip_skill.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.wood"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.wood.booster matches 2.. run tellraw @s ["",{"text":"Foraging ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.wood.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.wood.booster"},"color":"#B8E45A"}]
## combat
execute unless score @s tulip_skill.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"gold"},{"score":{"name":"@s","objective":"tulip_skill.combat"},"color":"gold"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.goal"}},{"text":"]","color":"dark_gray"}]
execute if score @s tulip_skill.combat.booster matches 2.. run tellraw @s ["",{"text":"Combat ","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.combat"},"color":"#B8E45A"},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.progress"}},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"tulip_skill.combat.goal"}},{"text":"]","color":"dark_gray"},{"text":" x","color":"#B8E45A"},{"score":{"name":"@s","objective":"tulip_skill.combat.booster"},"color":"#B8E45A"}]
# footer
tellraw @s ""


scoreboard players reset @s skills