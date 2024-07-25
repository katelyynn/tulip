# tulip housing
## settings menu
## /trigger housing


# sfx
playsound minecraft:entity.item_frame.place player @s

# identify house
scoreboard players operation temporary_settings_index housing.index = @s housing.index
execute as @e[tag=housing.location] if score @s housing.index = temporary_settings_index housing.index run tag @s add housing.temporary_settings

# tellraw
## header
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"⌂","color":"#EF9139"},{"text":"] ","color":"dark_gray"},{"text":"Your house\n","color":"#EF9139"}]

# open to visitors
## enabled
execute if score @e[tag=housing.temporary_settings,limit=1] housing.config.open_to_visitors matches 1.. run tellraw @s ["",{"text":"Open to visitors \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Open your house to server members."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger housing.config.open_to_visitors_option set -1"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score @e[tag=housing.temporary_settings,limit=1] housing.config.open_to_visitors matches 1.. run tellraw @s ["",{"text":"Open to visitors \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Open your house to server members."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger housing.config.open_to_visitors_option set 1"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# lock containers
tellraw @s ["",{"text":"Lock containers \u0020 \u0020","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Disables all interaction with containers for every player."}]}}]

# blacklist players
tellraw @s ["",{"text":"Blacklisted players \u0020 \u0020","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Prevents listed players from entering."}]}}]

## footer
tellraw @s ""


scoreboard players reset @a housing
tag @e[tag=housing.location,tag=housing.temporary_settings] remove housing.temporary_settings