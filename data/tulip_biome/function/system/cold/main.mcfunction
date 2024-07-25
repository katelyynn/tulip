# tulip biome
## cold loop


scoreboard players add @s temp_store.tulip_biome.player.cold_time 1

execute if biome ~ ~ ~ #tulip_biome:cold_extreme if score @s temp_store.tulip_biome.player.cold_time >= cold.cold_player_interval_medium tulip.config unless score @s tulip_biome.player.cold matches ..0 run function tulip_biome:system/cold/decrease
execute if biome ~ ~ ~ #tulip_biome:cold if score @s temp_store.tulip_biome.player.cold_time >= cold.cold_player_interval tulip.config unless score @s tulip_biome.player.cold matches ..0 run function tulip_biome:system/cold/decrease
# in water
execute if biome ~ ~ ~ #tulip_biome:cold if block ~ ~ ~ minecraft:water if score @s temp_store.tulip_biome.player.cold_time >= cold.cold_player_interval_extreme tulip.config unless score @s tulip_biome.player.cold matches ..0 run function tulip_biome:system/cold/decrease

execute unless biome ~ ~ ~ #tulip_biome:cold if score @s temp_store.tulip_biome.player.cold_time >= cold.heat_player_interval tulip.config unless score @s tulip_biome.player.cold >= cold.max_cold_level tulip.config run function tulip_biome:system/cold/heat
# near heat marker
execute if entity @e[tag=heat.generic,distance=..8] if score @s temp_store.tulip_biome.player.cold_time >= cold.heat_player_interval_extreme tulip.config unless score @s tulip_biome.player.cold >= cold.max_cold_level tulip.config run function tulip_biome:system/cold/heat