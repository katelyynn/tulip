# tulip housing
## claim house
## continue if available house


# mark self as owner
scoreboard players add @s housing.owner 0
scoreboard players add @s housing.owner 1

# assign housing index
## next_index defines the latest entry point to match with a location
scoreboard players add next_index housing.index 0
scoreboard players operation @e[tag=housing.location,tag=housing.temporary_claim,limit=1] housing.index = next_index housing.index
## set owner's index
scoreboard players operation @s housing.index = next_index housing.index
## advance index
scoreboard players add next_index housing.index 1

# set default configuration
execute as @e[tag=housing.location,tag=housing.temporary_claim,limit=1] run function tulip_housing:system/housing/claim/defaults

# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"You have claimed a house.","color":"#EF9139"}]
# sfx
playsound minecraft:entity.arrow.hit_player player @s

# teleport to house
tag @e[tag=housing.location,tag=housing.temporary_claim] add housing.temporary_location
function tulip_housing:system/housing/enter/owner

# remove temporary identifier
tag @e[tag=housing.location,tag=housing.temporary_claim] remove housing.temporary_claim
tag @e[tag=housing.location,tag=housing.temporary_location] remove housing.temporary_location