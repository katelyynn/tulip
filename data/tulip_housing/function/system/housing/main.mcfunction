# tulip housing
## main loop


# assign entry points to index
execute as @e[tag=housing.entry,tag=housing.temporary_index] run function tulip_housing:system/housing/index

# allow players to enter houses
execute as @e[tag=housing.entry] at @s if entity @a[distance=..1.25] run function tulip_housing:system/housing/enter/go

# allow players to exit houses
execute as @e[tag=housing.exit] at @s if entity @a[distance=..1.25] run function tulip_housing:system/housing/exit/go

# forceload locations
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run forceload add ~ ~
execute as @e[tag=housing.generic,tag=!housing.forceloaded] at @s run tag @s add housing.forceloaded

# player timeout
execute as @a[tag=housing.player_timeout] run function tulip_housing:system/housing/timeout/main

# player in house?
execute as @a at @s store result score @s temp_store.player_in_house if entity @e[tag=housing.inside,distance=..6]

# housing settings
## /trigger housing
scoreboard players enable @a[scores={housing.owner=1..}] housing
execute as @a at @s if score @s housing.owner matches 1.. if score @s housing matches 1.. run function tulip_housing:system/housing/settings/go
execute as @a at @s unless score @s housing.owner matches 1.. if score @s housing matches 1.. run function tulip_housing:system/housing/settings/error
## allow option config
scoreboard players enable @a[scores={housing.owner=1..}] housing.config.open_to_visitors_option
execute as @a at @s if score @s housing.owner matches 1.. if score @s housing.config.open_to_visitors_option matches 1.. run function tulip_housing:system/housing/settings/open_to_visitors/on
execute as @a at @s if score @s housing.owner matches 1.. if score @s housing.config.open_to_visitors_option matches -1 run function tulip_housing:system/housing/settings/open_to_visitors/off
#scoreboard players enable @a[scores={housing.owner=1..}] housing.config.lock_containers_option
#execute as @a at @s if score @s housing.owner matches 1.. if score @s housing.config.lock_containers_option matches 1.. run function tulip_housing:system/housing/settings/lock_containers/on