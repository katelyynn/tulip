# tulip transport
## gateway to transport player


# summon slime to be ridden by player
## ~~needs to be assigned uuid (hence the tag)~~
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Age:2147483647,Tags:["gateway.transporter","gateway.transporter.to_assign"]}

# copy gateway type
## required to transport you to the right gateway
execute if entity @s[tag=gateway.type_1] run tag @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest] add gateway.transporter.type_1
execute if entity @s[tag=gateway.type_2] run tag @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest] add gateway.transporter.type_2

scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest] tulip_transport.gateway.location = @s tulip_transport.gateway.location
scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest] tulip_transport.gateway.identifier = @s tulip_transport.gateway.identifier


# face correct direction
## location 1
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=1}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=1}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=1}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=1}] eyes run tp ~ ~ ~
## location 2
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=2}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=2}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=2}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=2}] eyes run tp ~ ~ ~
## location 3
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=3}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=3}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=3}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=3}] eyes run tp ~ ~ ~
## location 4
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=4}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=4}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=4}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=4}] eyes run tp ~ ~ ~
## location 5
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=5}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=5}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=5}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=5}] eyes run tp ~ ~ ~
## location 6
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_1,scores={tulip_transport.gateway.location=6}] at @s facing entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=6}] eyes run tp ~ ~ ~
execute as @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest,tag=gateway.transporter.type_2,scores={tulip_transport.gateway.location=6}] at @s facing entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=6}] eyes run tp ~ ~ ~


# assign uuid to player
execute as @a[tag=gateway.player_to_transport,limit=1,sort=nearest] run scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1] temp_store.uuid.0 = @s temp_store.uuid.0
execute as @a[tag=gateway.player_to_transport,limit=1,sort=nearest] run scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1] temp_store.uuid.1 = @s temp_store.uuid.1
execute as @a[tag=gateway.player_to_transport,limit=1,sort=nearest] run scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1] temp_store.uuid.2 = @s temp_store.uuid.2
execute as @a[tag=gateway.player_to_transport,limit=1,sort=nearest] run scoreboard players operation @e[tag=gateway.transporter.to_assign,limit=1] temp_store.uuid.3 = @s temp_store.uuid.3

# get player to ride
## choppy at updating :(
#ride @a[tag=gateway.player_to_transport,limit=1,sort=nearest] mount @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest]

# add player on cooldown
scoreboard players reset @a[tag=gateway.player_to_transport,limit=1,sort=nearest] temp_store.gateway.player_on_cooldown_timer
tag @a[tag=gateway.player_to_transport,limit=1,sort=nearest] add gateway.player_on_cooldown

tag @a[tag=gateway.player_to_transport,limit=1,sort=nearest] remove gateway.player_to_transport
tag @e[tag=gateway.transporter.to_assign,limit=1,sort=nearest] remove gateway.transporter.to_assign

tag @s remove gateway.to_transport_player