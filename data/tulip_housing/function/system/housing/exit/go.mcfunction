# tulip housing
## exit (at location)


# temporary identifier on owner
scoreboard players operation temporary_index housing.index = @s housing.index
execute as @e[tag=housing.entry] if score @s housing.index = temporary_index housing.index run tag @s add housing.temporary_entry

# are normal players nearby?
## if so, teleport them to entry
execute as @a[distance=..1.25,tag=!housing.player_timeout] at @s run function tulip_housing:system/housing/exit/player

# remove identifiers
tag @e[tag=housing.entry,tag=housing.temporary_entry] remove housing.temporary_entry