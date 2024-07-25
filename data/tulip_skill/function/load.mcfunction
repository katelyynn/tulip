# tulip /reload


# passive systems
## mining
scoreboard objectives add ore.state dummy
scoreboard objectives add ore.timer dummy
scoreboard players set ore.coal_ore tulip.defs 200
scoreboard players set ore.iron_ore tulip.defs 300
scoreboard players set ore.gold_ore tulip.defs 500
scoreboard players set ore.diamond_ore tulip.defs 800
## farming
scoreboard objectives add farm.state dummy
scoreboard objectives add farm.timer dummy
scoreboard players set farm.wheat tulip.defs 480
## foraging
scoreboard objectives add wood.state dummy
scoreboard objectives add wood.timer dummy
scoreboard players set wood.oak_log tulip.defs 300
scoreboard players set wood.spruce_log tulip.defs 300
scoreboard players set wood.birch_log tulip.defs 300
scoreboard players set wood.jungle_log tulip.defs 300
scoreboard players set wood.acacia_log tulip.defs 300
scoreboard players set wood.dark_oak_log tulip.defs 300
scoreboard players set wood.mangrove_log tulip.defs 300


# display player skills as a trigger
scoreboard objectives add skills trigger "Your skills"


# track player level requirements
## mining
scoreboard objectives add tulip_skill.mine.stone minecraft.mined:minecraft.stone
scoreboard objectives add tulip_skill.mine.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add tulip_skill.mine.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add tulip_skill.mine.raw_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add tulip_skill.mine.raw_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add tulip_skill.mine.diamond minecraft.mined:minecraft.diamond_ore
## fishing
scoreboard objectives add tulip_skill.fish.catch minecraft.custom:fish_caught
## farming
scoreboard objectives add tulip_skill.farm.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add tulip_skill.farm.carrots minecraft.mined:minecraft.carrots
scoreboard objectives add tulip_skill.farm.sweet_berry_bush minecraft.mined:minecraft.sweet_berry_bush
## foraging
scoreboard objectives add tulip_skill.wood.oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add tulip_skill.wood.spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add tulip_skill.wood.birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add tulip_skill.wood.jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add tulip_skill.wood.acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add tulip_skill.wood.dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add tulip_skill.wood.mangrove_log minecraft.mined:minecraft.mangrove_log

# player levels
scoreboard objectives add tulip_skill.goal dummy
scoreboard players set multiply tulip_skill.goal 100
scoreboard players set addition tulip_skill.goal 400
## mining
scoreboard objectives add tulip_skill.mine dummy
scoreboard objectives add tulip_skill.mine.progress dummy
scoreboard objectives add tulip_skill.mine.goal dummy
scoreboard objectives add tulip_skill.mine.goal_calc dummy
## fishing
scoreboard objectives add tulip_skill.fish dummy
scoreboard objectives add tulip_skill.fish.progress dummy
scoreboard objectives add tulip_skill.fish.goal dummy
scoreboard objectives add tulip_skill.fish.goal_calc dummy
## foraging
scoreboard objectives add tulip_skill.wood dummy
scoreboard objectives add tulip_skill.wood.progress dummy
scoreboard objectives add tulip_skill.wood.goal dummy
scoreboard objectives add tulip_skill.wood.goal_calc dummy
## farming
scoreboard objectives add tulip_skill.farm dummy
scoreboard objectives add tulip_skill.farm.progress dummy
scoreboard objectives add tulip_skill.farm.goal dummy
scoreboard objectives add tulip_skill.farm.goal_calc dummy
## N/A
scoreboard objectives add tulip_skill.food dummy
scoreboard objectives add tulip_skill.food.progress dummy
scoreboard objectives add tulip_skill.food.goal dummy
scoreboard objectives add tulip_skill.food.goal_calc dummy
## combat
scoreboard objectives add tulip_skill.combat dummy
scoreboard objectives add tulip_skill.combat.progress dummy
scoreboard objectives add tulip_skill.combat.goal dummy
scoreboard objectives add tulip_skill.combat.goal_calc dummy

# player level boosters
scoreboard objectives add tulip_skill.generic.booster dummy
scoreboard objectives add temp_store.player_item_booster_eligible dummy
scoreboard objectives add temp_store.player_item_booster_profession dummy
scoreboard objectives add temp_store.player_item_booster_multiplier dummy
scoreboard objectives add temp_store.player_item_booster_length dummy
scoreboard objectives add temp_store.player_item_booster_persistent dummy
## mining
scoreboard objectives add tulip_skill.mine.booster dummy
scoreboard objectives add tulip_skill.mine.booster_time dummy
scoreboard objectives add tulip_skill.mine.booster_time_s dummy
## fishing
scoreboard objectives add tulip_skill.fish.booster dummy
scoreboard objectives add tulip_skill.fish.booster_time dummy
scoreboard objectives add tulip_skill.fish.booster_time_s dummy
## foraging
scoreboard objectives add tulip_skill.wood.booster dummy
scoreboard objectives add tulip_skill.wood.booster_time dummy
scoreboard objectives add tulip_skill.wood.booster_time_s dummy
## farming
scoreboard objectives add tulip_skill.farm.booster dummy
scoreboard objectives add tulip_skill.farm.booster_time dummy
scoreboard objectives add tulip_skill.farm.booster_time_s dummy
## N/A
scoreboard objectives add tulip_skill.food.booster dummy
scoreboard objectives add tulip_skill.food.booster_time dummy
scoreboard objectives add tulip_skill.food.booster_time_s dummy
## combat
scoreboard objectives add tulip_skill.combat.booster dummy
scoreboard objectives add tulip_skill.combat.booster_time dummy
scoreboard objectives add tulip_skill.combat.booster_time_s dummy


# level rates
scoreboard objectives add tulip_skill.rates dummy
## mining
scoreboard players set mine.cobblestone tulip_skill.rates 5
scoreboard objectives add tulip_skill.rates_player.mine.cobblestone dummy
scoreboard players set mine.coal tulip_skill.rates 10
scoreboard objectives add tulip_skill.rates_player.mine.coal dummy
scoreboard players set mine.raw_iron tulip_skill.rates 20
scoreboard objectives add tulip_skill.rates_player.mine.raw_iron dummy
scoreboard players set mine.raw_gold tulip_skill.rates 30
scoreboard objectives add tulip_skill.rates_player.mine.raw_gold dummy
scoreboard players set mine.diamond tulip_skill.rates 50
scoreboard objectives add tulip_skill.rates_player.mine.diamond dummy
scoreboard players set mine.lapis_lazuli tulip_skill.rates 0
scoreboard objectives add tulip_skill.rates_player.mine.lapis_lazuli dummy
scoreboard players set mine.redstone tulip_skill.rates 0
scoreboard objectives add tulip_skill.rates_player.mine.redstone dummy
## fishing
scoreboard players set fish.catch tulip_skill.rates 10
scoreboard objectives add tulip_skill.rates_player.fish.catch dummy
## farming
scoreboard players set farm.wheat tulip_skill.rates 1
scoreboard objectives add tulip_skill.rates_player.farm.wheat dummy
## foraging
scoreboard players set wood.oak_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.oak_log dummy
scoreboard players set wood.spruce_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.spruce_log dummy
scoreboard players set wood.birch_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.birch_log dummy
scoreboard players set wood.jungle_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.jungle_log dummy
scoreboard players set wood.acacia_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.acacia_log dummy
scoreboard players set wood.dark_oak_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.dark_oak_log dummy
scoreboard players set wood.mangrove_log tulip_skill.rates 3
scoreboard objectives add tulip_skill.rates_player.wood.mangrove_log dummy

## generated via rates.html