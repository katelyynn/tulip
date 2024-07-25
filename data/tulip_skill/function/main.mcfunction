# tulip skill main loop


# passive systems
## mine
scoreboard players add @e[tag=ore.timer] ore.timer 1
execute as @e[tag=ore.generic] at @s run function tulip_skill:system/mine/generic
## farm
scoreboard players add @e[tag=farm.timer] farm.timer 1
execute as @e[tag=farm.generic] at @s run function tulip_skill:system/farm/generic
## wood
scoreboard players add @e[tag=wood.timer] wood.timer 1
execute as @e[tag=wood.generic] at @s run function tulip_skill:system/wood/generic


# track player level requirements
execute as @a at @s run function tulip_skill:system/level/main

# check level is >= 1
execute as @a run function tulip_skill:system/level/check

# display player's level
execute as @a run function tulip_skill:system/level/show

# check level up
execute as @a run function tulip_skill:system/level/up/check

# call player's level in trigger
scoreboard players enable @a[tag=!ignore_call] skills
execute as @a if score @s skills matches 1.. run function tulip_skill:system/level/call

# workbench
execute as @e[tag=workbench.generic,tag=!workbench.init] at @s run function tulip_skill:system/workbench/init