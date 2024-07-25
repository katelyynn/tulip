# tulip leveling
## level booster
## main loop


# check if any XP booster is active
scoreboard players set @s tulip_skill.generic.booster 0
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players add @s tulip_skill.generic.booster 1
execute if score @s tulip_skill.fish.booster matches 2.. run scoreboard players add @s tulip_skill.generic.booster 1
execute if score @s tulip_skill.farm.booster matches 2.. run scoreboard players add @s tulip_skill.generic.booster 1
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players add @s tulip_skill.generic.booster 1
execute if score @s tulip_skill.combat.booster matches 2.. run scoreboard players add @s tulip_skill.generic.booster 1
## if so, run timer
execute if score @s tulip_skill.generic.booster matches 1.. run function tulip_skill:system/level/booster/time

# profession lookup table
## TODO: merge with tool/main lookup table (different rn)
## 0: mine
## 1: fish
## 2: farm
## 3: wood
## 4: combat

# item eligible lookup table
## 0: invalid
## 1: valid

# XP booster attributes
scoreboard players set @s temp_store.player_item_booster_eligible 0
scoreboard players set @s temp_store.player_item_booster_profession -1
scoreboard players set @s temp_store.player_item_booster_multiplier -1
scoreboard players set @s temp_store.player_item_booster_length -1
scoreboard players set @s temp_store.player_item_booster_persistent -1
## store current item's profession
## TODO: use some data storage lookup table smart thing?
execute store result score @s temp_store.player_item_booster_profession run data get entity @s SelectedItem.tag.boosterProfession
## store current item's multiplier
execute store result score @s temp_store.player_item_booster_multiplier run data get entity @s SelectedItem.tag.boosterMultiplier
## store current item's length
execute store result score @s temp_store.player_item_booster_length run data get entity @s SelectedItem.tag.boosterLength
## store current item's persistent
## will keep item rather than removing
execute store result score @s temp_store.player_item_booster_persistent run data get entity @s SelectedItem.tag.boosterIsPersistent

# item eligible?
## valid
execute unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 0.. if score @s temp_store.player_item_booster_multiplier matches 2.. if score @s temp_store.player_item_booster_length matches 10.. run scoreboard players set @s temp_store.player_item_booster_eligible 1
## professions
## TODO: figure out a way to clear the item
## maybe copy the selecteditem data to armor stand
## then give it a unique tag that can be used for clearing?
execute unless score @s temp_store.player_in_house matches 1.. unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 0 unless score @s tulip_skill.mine.booster matches 2.. run function tulip_skill:system/level/booster/mine/start
execute unless score @s temp_store.player_in_house matches 1.. unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 1 unless score @s tulip_skill.fish.booster matches 2.. run function tulip_skill:system/level/booster/fish/start
execute unless score @s temp_store.player_in_house matches 1.. unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 2 unless score @s tulip_skill.farm.booster matches 2.. run function tulip_skill:system/level/booster/farm/start
execute unless score @s temp_store.player_in_house matches 1.. unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 3 unless score @s tulip_skill.wood.booster matches 2.. run function tulip_skill:system/level/booster/wood/start
execute unless score @s temp_store.player_in_house matches 1.. unless score @s temp_store.player_item_booster_eligible matches 0 unless score @s temp_store.player_item_booster_eligible matches 3 if score @s temp_store.player_item_booster_profession matches 4 unless score @s tulip_skill.combat.booster matches 2.. run function tulip_skill:system/level/booster/combat/start

# display ineligible
## TODO: display time remaining here
execute unless score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_profession matches 0 if score @s tulip_skill.mine.booster matches 2.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"You already have a Mining XP booster active.","color":"#B8E45A"}]
execute unless score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_profession matches 1 if score @s tulip_skill.fish.booster matches 2.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"You already have a Fishing XP booster active.","color":"#B8E45A"}]
execute unless score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_profession matches 2 if score @s tulip_skill.farm.booster matches 2.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"You already have a Farming XP booster active.","color":"#B8E45A"}]
execute unless score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_profession matches 3 if score @s tulip_skill.wood.booster matches 2.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"You already have a Foraging XP booster active.","color":"#B8E45A"}]
execute unless score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_profession matches 4 if score @s tulip_skill.combat.booster matches 2.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"You already have a Combat XP booster active.","color":"#B8E45A"}]
## housing
execute if score @s temp_store.player_in_house matches 1.. if score @s temp_store.player_item_booster_eligible matches 1 run title @s actionbar [{"text":"XP boosters cannot be activated in housing areas.","color":"#EF9139"}]

## mining
scoreboard players operation @s tulip_skill.rates_player.mine.cobblestone = mine.cobblestone tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.cobblestone *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.coal = mine.coal tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.coal *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.raw_iron = mine.raw_iron tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.raw_iron *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.raw_gold = mine.raw_gold tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.raw_gold *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.diamond = mine.diamond tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.diamond *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.lapis_lazuli = mine.lapis_lazuli tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.lapis_lazuli *= @s tulip_skill.mine.booster
scoreboard players operation @s tulip_skill.rates_player.mine.redstone = mine.redstone tulip_skill.rates
execute if score @s tulip_skill.mine.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.mine.redstone *= @s tulip_skill.mine.booster
## fishing
scoreboard players operation @s tulip_skill.rates_player.fish.catch = fish.catch tulip_skill.rates
execute if score @s tulip_skill.fish.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.fish.catch *= @s tulip_skill.fish.booster
## farming
scoreboard players operation @s tulip_skill.rates_player.farm.wheat = farm.wheat tulip_skill.rates
execute if score @s tulip_skill.farm.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.farm.wheat *= @s tulip_skill.farm.booster
## foraging
scoreboard players operation @s tulip_skill.rates_player.wood.oak_log = wood.oak_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.oak_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.spruce_log = wood.spruce_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.spruce_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.birch_log = wood.birch_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.birch_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.jungle_log = wood.jungle_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.jungle_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.acacia_log = wood.acacia_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.acacia_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.dark_oak_log = wood.dark_oak_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.dark_oak_log *= @s tulip_skill.wood.booster
scoreboard players operation @s tulip_skill.rates_player.wood.mangrove_log = wood.mangrove_log tulip_skill.rates
execute if score @s tulip_skill.wood.booster matches 2.. run scoreboard players operation @s tulip_skill.rates_player.wood.mangrove_log *= @s tulip_skill.wood.booster

## generated via rates.html
