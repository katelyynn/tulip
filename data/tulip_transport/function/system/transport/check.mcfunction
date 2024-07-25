# tulip transport
## check if gateway is valid


scoreboard players set @s temp_store.gateway.is_valid 0
scoreboard players set @s temp_store.gateway.has_location 0
scoreboard players set @s temp_store.gateway.has_accompanying_gateway 0

# does this gateway have a location
execute if score @s tulip_transport.gateway.location matches 0.. run scoreboard players set @s temp_store.gateway.has_location 1

# is there an accompanying gateway?
## location 1
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=1}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=1}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=1}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=1}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
## location 2
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=2}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=2}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=2}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=2}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
## location 3
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=3}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=3}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=3}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=3}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
## location 4
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=4}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=4}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=4}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=4}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
## location 5
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=5}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=5}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=5}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=5}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
## location 6
execute if entity @s[tag=gateway.type_1,scores={tulip_transport.gateway.location=6}] if entity @e[tag=gateway.type_2,scores={tulip_transport.gateway.location=6}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1
execute if entity @s[tag=gateway.type_2,scores={tulip_transport.gateway.location=6}] if entity @e[tag=gateway.type_1,scores={tulip_transport.gateway.location=6}] run scoreboard players set @s temp_store.gateway.has_accompanying_gateway 1


# add up
scoreboard players operation @s temp_store.gateway.is_valid += @s temp_store.gateway.has_location
scoreboard players operation @s temp_store.gateway.is_valid += @s temp_store.gateway.has_accompanying_gateway


# errors
## main
execute unless score @s temp_store.gateway.is_valid matches 2 run scoreboard players reset @a[distance=..2.2,limit=1,sort=nearest] temp_store.gateway.player_crouch_to_confirm
execute unless score @s temp_store.gateway.is_valid matches 2 run playsound tulip:interaction.fail player @a[distance=..2.2,limit=1,sort=nearest] ~ ~ ~
execute unless score @s temp_store.gateway.is_valid matches 2 as @a[distance=..2.2,limit=1,sort=nearest] run function tulip_transport:system/cooldown/force
## individual
execute unless score @s temp_store.gateway.has_location matches 1.. run tellraw @a[distance=..2.2,limit=1,sort=nearest] ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"This gateway cannot transport due to a missing linked location id.","color":"red"}]
execute unless score @s temp_store.gateway.has_accompanying_gateway matches 1.. run tellraw @a[distance=..2.2,limit=1,sort=nearest] ["",{"text":"[","color":"dark_gray"},{"text":"→","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"This gateway cannot transport due to a missing accompanying gateway.","color":"red"}]


# gateway is valid, begin
execute if score @s temp_store.gateway.is_valid matches 2 run function tulip_transport:system/transport/begin