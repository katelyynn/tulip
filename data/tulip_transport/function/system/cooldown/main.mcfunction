# tulip cooldown
## time loop


scoreboard players add @s temp_store.gateway.player_on_cooldown_timer 1

execute if score @s temp_store.gateway.player_on_cooldown_timer >= gateway.player_cooldown tulip.config run function tulip_transport:system/cooldown/finish