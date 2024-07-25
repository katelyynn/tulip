# check player's level requirements


# convert level rates per player
function tulip_skill:system/level/booster/main

# gain +xp
## mining
execute if score @s tulip_skill.mine.cobblestone matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.cobblestone
execute if score @s tulip_skill.mine.coal matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.coal
execute if score @s tulip_skill.mine.raw_iron matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.raw_iron
execute if score @s tulip_skill.mine.raw_gold matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.raw_gold
execute if score @s tulip_skill.mine.diamond matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.diamond
execute if score @s tulip_skill.mine.lapis_lazuli matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.lapis_lazuli
execute if score @s tulip_skill.mine.redstone matches 1.. run scoreboard players operation @s tulip_skill.mine.progress += @s tulip_skill.rates_player.mine.redstone
## fishing
execute if score @s tulip_skill.fish.catch matches 1.. run scoreboard players operation @s tulip_skill.fish.progress += @s tulip_skill.rates_player.fish.catch
## farming
execute if score @s tulip_skill.farm.wheat matches 1.. run scoreboard players operation @s tulip_skill.farm.progress += @s tulip_skill.rates_player.farm.wheat
## foraging
execute if score @s tulip_skill.wood.oak_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.oak_log
execute if score @s tulip_skill.wood.spruce_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.spruce_log
execute if score @s tulip_skill.wood.birch_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.birch_log
execute if score @s tulip_skill.wood.jungle_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.jungle_log
execute if score @s tulip_skill.wood.acacia_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.acacia_log
execute if score @s tulip_skill.wood.dark_oak_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.dark_oak_log
execute if score @s tulip_skill.wood.mangrove_log matches 1.. run scoreboard players operation @s tulip_skill.wood.progress += @s tulip_skill.rates_player.wood.mangrove_log

scoreboard players reset @s tulip_skill.mine.cobblestone
scoreboard players reset @s tulip_skill.mine.coal
scoreboard players reset @s tulip_skill.mine.raw_iron
scoreboard players reset @s tulip_skill.mine.raw_gold
scoreboard players reset @s tulip_skill.mine.diamond
scoreboard players reset @s tulip_skill.mine.lapis_lazuli
scoreboard players reset @s tulip_skill.mine.redstone
scoreboard players reset @s tulip_skill.fish.catch
scoreboard players reset @s tulip_skill.farm.wheat
scoreboard players reset @s tulip_skill.wood.oak_log
scoreboard players reset @s tulip_skill.wood.spruce_log
scoreboard players reset @s tulip_skill.wood.birch_log
scoreboard players reset @s tulip_skill.wood.jungle_log
scoreboard players reset @s tulip_skill.wood.acacia_log
scoreboard players reset @s tulip_skill.wood.dark_oak_log
scoreboard players reset @s tulip_skill.wood.mangrove_log

## generated via rates.html