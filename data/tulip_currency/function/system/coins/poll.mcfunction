# tulip currency
## poll new updates


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⑨","color":"#CCB548"},{"text":"] ","color":"dark_gray"},{"text":"You earned ","color":"#CCB548"},{"score":{"name":"@s","objective":"temp_store.coins"},"color":"#EEDA7A"},{"text":" Coins!","color":"#CCB548"}]
# sfx
#function tag:sfx/coins

# update coins
scoreboard players operation @s player.coins += @s temp_store.coins
scoreboard players set @s temp_store.coins 0