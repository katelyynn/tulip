# tulip main loop


tag @a[tag=gateway.player_in_crouch_range] remove gateway.player_in_crouch_range

# transport
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.generic] at @s if entity @p[distance=..15] run particle minecraft:portal ~ ~ ~ 0.6 0.6 0.6 0.2 4
## player nearby, but invalid
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.generic,tag=!gateway.to_transport_player] at @s run scoreboard players reset @a[scores={temp_store.gateway.player_crouch_to_confirm=0..},distance=3..10] temp_store.gateway.player_crouch_to_confirm
## player inside?
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.generic,tag=!gateway.to_transport_player] at @s run tag @a[distance=..2.2,tag=!gateway.player_on_cooldown] add gateway.player_in_crouch_range
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.generic,tag=!gateway.to_transport_player] at @s if entity @a[distance=..2.2,limit=1,tag=!gateway.player_on_cooldown,scores={temp_store.gateway.player_crouch_to_confirm=1..}] run function tulip_transport:system/transport/check

execute as @e[type=minecraft:area_effect_cloud,tag=gateway.to_transport_player] at @s run function tulip_transport:system/transport/go

# teleport transporter
execute as @a[tag=gateway.player_on_cooldown] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3] if score @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3,limit=1] temp_store.uuid.0 = @s temp_store.uuid.0 if score @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3,limit=1] temp_store.uuid.1 = @s temp_store.uuid.1 if score @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3,limit=1] temp_store.uuid.2 = @s temp_store.uuid.2 if score @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3,limit=1] temp_store.uuid.3 = @s temp_store.uuid.3 run tp @s @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,distance=..3,limit=1]

execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,tag=!gateway.transporter_to_kill] at @s run tp ^ ^ ^0.75
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,tag=!gateway.transporter_to_kill] at @s run playsound minecraft:ambient.crimson_forest.mood player @a ~ ~ ~ 0.2
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter,tag=!gateway.transporter_to_kill] at @s run particle minecraft:cloud ~ ~0.5 ~ 0 0.1 0 0 6


## location 1
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=1},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=1},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=1},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=1},distance=..1.2] run function tulip_transport:system/transport/finish
## location 2
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=2},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=2},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=2},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=2},distance=..1.2] run function tulip_transport:system/transport/finish
## location 3
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=3},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=3},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=3},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=3},distance=..1.2] run function tulip_transport:system/transport/finish
## location 4
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=4},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=4},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=4},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=4},distance=..1.2] run function tulip_transport:system/transport/finish
## location 5
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=5},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=5},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=5},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=5},distance=..1.2] run function tulip_transport:system/transport/finish
## location 6
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=6},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_2,scores={tulip_transport.gateway.location=6},distance=..1.2] run function tulip_transport:system/transport/finish
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=6},tag=!gateway.transporter_to_kill] at @s if entity @e[type=minecraft:area_effect_cloud,tag=gateway.type_1,scores={tulip_transport.gateway.location=6},distance=..1.2] run function tulip_transport:system/transport/finish


# player cooldown timer
execute as @a[tag=gateway.player_on_cooldown_timer] at @s run function tulip_transport:system/cooldown/main
# transporter scheduled to kill
execute as @e[type=minecraft:area_effect_cloud,tag=gateway.transporter_to_kill] at @s run function tulip_transport:system/transport/to_kill/main