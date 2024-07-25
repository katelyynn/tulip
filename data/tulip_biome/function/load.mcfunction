# tulip /reload


scoreboard objectives add tulip_biome.player.cold dummy
scoreboard objectives add temp_store.tulip_biome.player.cold_time dummy

scoreboard objectives add temp_store.tulip_biome.player.freeze_time dummy

scoreboard objectives add temp_store.tulip_biome.heat_marker_time dummy


# options
scoreboard players set cold.max_cold_level tulip.config 50
scoreboard players set cold.cold_player_interval tulip.config 27
scoreboard players set cold.cold_player_interval_medium tulip.config 18
scoreboard players set cold.cold_player_interval_extreme tulip.config 6
scoreboard players set cold.heat_player_interval tulip.config 40
scoreboard players set cold.heat_player_interval_extreme tulip.config 20
scoreboard players set cold.freeze_dmg_interval tulip.config 27