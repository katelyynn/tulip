# tulip transporter scheduled to kill
## time loop


scoreboard players add @s temp_store.gateway.transporter_to_kill_timer 1
#execute if score @s temp_store.gateway.transporter.to_kill_timer matches 1 as @a[distance=..10] at @s run playsound minecraft:ambient.crimson_forest.mood player @s ~ ~ ~ 0.55

execute if score @s temp_store.gateway.transporter_to_kill_timer >= gateway.transporter_kill tulip.config run function tulip_transport:system/transport/to_kill/finish