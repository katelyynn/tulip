# tulip currency
## poll new updates


# what direction?
scoreboard players set @s temp_store.coins.direction 0
execute if score @s player.coins >= @s temp_store.coins.display run scoreboard players set @s temp_store.coins.direction 2
execute if score @s player.coins <= @s temp_store.coins.display run scoreboard players set @s temp_store.coins.direction 1

scoreboard players operation @s temp_store.coins.difference = @s player.coins
scoreboard players operation @s temp_store.coins.difference -= @s temp_store.coins.display

execute if score @s temp_store.coins.difference matches 1.. run scoreboard players set @s temp_store.coins.difference_amount 1
execute if score @s temp_store.coins.difference matches 2.. run scoreboard players set @s temp_store.coins.difference_amount 2
execute if score @s temp_store.coins.difference matches 5.. run scoreboard players set @s temp_store.coins.difference_amount 5
execute if score @s temp_store.coins.difference matches 50.. run scoreboard players set @s temp_store.coins.difference_amount 20
execute if score @s temp_store.coins.difference matches 100.. run scoreboard players set @s temp_store.coins.difference_amount 100

execute if score @s temp_store.coins.difference matches ..-1 run scoreboard players set @s temp_store.coins.difference_amount 1
execute if score @s temp_store.coins.difference matches ..-2 run scoreboard players set @s temp_store.coins.difference_amount 2
execute if score @s temp_store.coins.difference matches ..-50 run scoreboard players set @s temp_store.coins.difference_amount 20
execute if score @s temp_store.coins.difference matches ..-100 run scoreboard players set @s temp_store.coins.difference_amount 100

# add
execute if score @s temp_store.coins.direction matches 2 run scoreboard players operation @s temp_store.coins.display += @s temp_store.coins.difference_amount
# remove
execute if score @s temp_store.coins.direction matches 1 run scoreboard players operation @s temp_store.coins.display -= @s temp_store.coins.difference_amount

# sfx
execute if score @s temp_store.coins.direction matches 2 run playsound tulip:coin.poll player @s
execute if score @s temp_store.coins.direction matches 1 run playsound tulip:coin.poll player @s ~ ~ ~ 100 0.9