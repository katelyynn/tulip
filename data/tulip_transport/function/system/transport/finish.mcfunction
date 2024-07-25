# tulip transport
## transporter has reached destination


#tp @s ^ ^ ^0.5
tag @a[tag=gateway.player_on_cooldown,sort=nearest,distance=..1.5,limit=1] add gateway.player_on_cooldown_timer
tag @s add gateway.transporter_to_kill

# announce
execute if score @s tulip_transport.gateway.identifier matches 0 run tellraw @a[tag=gateway.player_on_cooldown,tag=gateway.player_on_cooldown_timer,sort=nearest,distance=..1.5,limit=1] ["",{"text":"\n[","color":"dark_gray"},{"text":"Ⓔ","color":"#85E297"},{"text":"] ","color":"dark_gray"},{"text":"You have arrived at ","color":"#85E297"},{"text":"Spawn\n","color":"#85E297","font":"tulip:alternate"}]
execute if score @s tulip_transport.gateway.identifier matches 1 run tellraw @a[tag=gateway.player_on_cooldown,tag=gateway.player_on_cooldown_timer,sort=nearest,distance=..1.5,limit=1] ["",{"text":"\n[","color":"dark_gray"},{"text":"Ⓔ","color":"#85E297"},{"text":"] ","color":"dark_gray"},{"text":"You have arrived at ","color":"#85E297"},{"text":"the Forest\n","color":"#85E297","font":"tulip:alternate"}]
execute if score @s tulip_transport.gateway.identifier matches 2 run tellraw @a[tag=gateway.player_on_cooldown,tag=gateway.player_on_cooldown_timer,sort=nearest,distance=..1.5,limit=1] ["",{"text":"\n[","color":"dark_gray"},{"text":"Ⓔ","color":"#85E297"},{"text":"] ","color":"dark_gray"},{"text":"You have arrived at ","color":"#85E297"},{"text":"the Farm\n","color":"#85E297","font":"tulip:alternate"}]
# sfx
playsound minecraft:block.bell.use player @a ~ ~ ~