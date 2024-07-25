# tulip housing
## enter (at location)


# temporary identifier on owner
scoreboard players operation temporary_index housing.index = @s housing.index
execute as @e[tag=housing.location] if score @s housing.index = temporary_index housing.index run tag @s add housing.temporary_location
execute as @a[distance=..1.25,tag=!housing.player_timeout] if score @s housing.index = temporary_index housing.index run tag @s add housing.temporary_entry

# is owner nearby?
## if so, teleport them to house
execute as @a[tag=housing.temporary_entry,distance=..1.25] at @s run function tulip_housing:system/housing/enter/owner

# are normal players nearby?
## check config first
## if valid, teleport them to house
execute if score @e[tag=housing.location,tag=housing.temporary_location,limit=1] housing.config.open_to_visitors matches 1.. as @a[tag=!housing.temporary_entry,tag=!housing.player_timeout,distance=..1.25] at @s run function tulip_housing:system/housing/enter/player

# remove identifiers
tag @a[tag=housing.temporary_entry] remove housing.temporary_entry
tag @e[tag=housing.location,tag=housing.temporary_location] remove housing.temporary_location