# tulip uuid tracker
## for player


execute store result score @s temp_store.uuid.0 run data get entity @s UUID[0]
execute store result score @s temp_store.uuid.1 run data get entity @s UUID[1]
execute store result score @s temp_store.uuid.2 run data get entity @s UUID[2]
execute store result score @s temp_store.uuid.3 run data get entity @s UUID[3]

tag @s add player.uuid_tracked