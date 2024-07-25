# tulip heat
## heat marker main loop


scoreboard players add @s temp_store.tulip_biome.heat_marker_time 1

execute if score @s temp_store.tulip_biome.heat_marker_time matches 20.. run particle minecraft:heart ~ ~ ~ 0.3 1.2 0.3 0 2
execute if score @s temp_store.tulip_biome.heat_marker_time matches 20.. run scoreboard players reset @s temp_store.tulip_biome.heat_marker_time