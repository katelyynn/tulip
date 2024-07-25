# tulip heart beat
## main loop


scoreboard players add heart temp_store.heart_beat 1

execute if score heart temp_store.heart_beat matches 20.. run scoreboard players set heart temp_store.heart_beat 0

execute if score heart temp_store.heart_beat matches 0 positioned 0 0 0 as @e[type=minecraft:area_effect_cloud,tag=tulip.heart,limit=1] run data merge entity @s {CustomName:'{"color":"#EA6060","text":"④ "}'}
execute if score heart temp_store.heart_beat matches 10 positioned 0 0 0 as @e[type=minecraft:area_effect_cloud,tag=tulip.heart,limit=1] run data merge entity @s {CustomName:'{"color":"#EA6060","text":"Ⓟ "}'}