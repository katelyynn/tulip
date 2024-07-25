# tulip housing
## error (if user does not have house)


# announce
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"⌂","color":"red"},{"text":"] ","color":"dark_gray"},{"text":"You do not have a house to configure!","color":"red"}]
# sfx
playsound minecraft:block.note_block.bass player @s


scoreboard players reset @a housing