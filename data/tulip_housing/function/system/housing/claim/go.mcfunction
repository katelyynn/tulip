# tulip housing
## claim house


# choose random house
## tag with temporary identifier
tag @e[tag=housing.location,tag=!housing.claimed,sort=random,limit=1] add housing.temporary_claim
tag @e[tag=housing.location,tag=housing.temporary_claim,limit=1] add housing.claimed

# any houses left to claim?
## if not, display error
# announce
execute unless entity @e[tag=housing.location,tag=housing.temporary_claim] run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"There are no available houses at the moment, try again later.","color":"red"}]
# sfx
execute unless entity @e[tag=housing.location,tag=housing.temporary_claim] run playsound minecraft:block.note_block.bass player @s
## if so, continue
execute if entity @e[tag=housing.location,tag=housing.temporary_claim] run function tulip_housing:system/housing/claim/continue