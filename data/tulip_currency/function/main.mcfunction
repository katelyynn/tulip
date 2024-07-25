# tulip currency
## main loop


# coins
execute as @a unless score @s temp_store.coins.display matches 0.. run scoreboard players set @s temp_store.coins.display 0
execute as @a unless score @s player.coins matches 0.. run scoreboard players set @s player.coins 0
execute as @a at @s unless score @s temp_store.coins.display = @s player.coins run function tulip_currency:system/coins/animation