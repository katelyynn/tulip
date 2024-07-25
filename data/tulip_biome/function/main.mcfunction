# tulip main loop


execute as @a unless score @s tulip_biome.player.cold matches 0.. run scoreboard players set @s tulip_biome.player.cold 0

execute as @a at @s if score @s tulip_biome.player.cold matches 0.. if score @s tulip_biome.player.cold <= cold.max_cold_level tulip.config run function tulip_biome:system/cold/main
execute as @a at @s if score @s tulip_biome.player.cold matches ..0 unless entity @s[gamemode=creative] run function tulip_biome:system/freeze/main


# heat markers
execute as @e[type=minecraft:area_effect_cloud,tag=heat.generic] at @s if entity @p[distance=..8] run function tulip_biome:system/heat_marker/main