# tulip workbench
## init


execute if entity @s[tag=workbench.furnace] align xyz run summon block_display ~ ~ ~ {Tags:["workbench.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:furnace"}}

execute if entity @s[tag=workbench.axis_north] align xyz as @e[type=block_display,limit=1,sort=nearest] run data merge entity @s {block_state:{Properties:{facing:"north"}}}
execute if entity @s[tag=workbench.axis_east] align xyz as @e[type=block_display,limit=1,sort=nearest] run data merge entity @s {block_state:{Properties:{facing:"east"}}}
execute if entity @s[tag=workbench.axis_south] align xyz as @e[type=block_display,limit=1,sort=nearest] run data merge entity @s {block_state:{Properties:{facing:"south"}}}
execute if entity @s[tag=workbench.axis_west] align xyz as @e[type=block_display,limit=1,sort=nearest] run data merge entity @s {block_state:{Properties:{facing:"west"}}}

tag @s add workbench.init