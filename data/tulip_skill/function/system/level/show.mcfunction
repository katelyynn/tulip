# show player's level
## depending on tool


title @s title ""
title @s times 0 100 10


# none
## player is not cold
execute unless score @s tulip_biome.player.cold < cold.max_cold_level tulip.config unless score @s temp_store.player_tool_bool matches 1.. run title @s subtitle ["",{"selector":"@e[type=minecraft:area_effect_cloud,tag=tulip.heart,limit=1]","font":"tulip:title"},{"score":{"name":"@s","objective":"player.health"},"font":"tulip:title","color":"#EA6060"}]
## player is cold
execute if score @s tulip_biome.player.cold < cold.max_cold_level tulip.config unless score @s temp_store.player_tool_bool matches 1.. run title @s subtitle ["",{"selector":"@e[type=minecraft:area_effect_cloud,tag=tulip.heart,limit=1]","font":"tulip:title","color":"#CD7992"},{"score":{"name":"@s","objective":"player.health"},"font":"tulip:title","color":"#CD7992"},{"text":" \u0020 Ⓘ ","font":"tulip:title","color":"#bacbfc"},{"score":{"name":"@s","objective":"tulip_biome.player.cold"},"font":"tulip:title","color":"#bacbfc"}]

execute unless entity @s[tag=gateway.player_in_crouch_range] unless score @s temp_store.player_tool_bool matches 1.. run title @s actionbar ["",{"text":" \u0020 ⑨ ","color":"#EEDA7A","font":"tulip:actionbar"},{"score":{"name":"@s","objective":"temp_store.coins.display"},"color":"#EEDA7A","font":"tulip:actionbar"},{"text":" \u0020 ⑱ ","color":"#C4917D","font":"tulip:actionbar"},{"score":{"name":"@s","objective":"player.food"},"color":"#C4917D","font":"tulip:actionbar"},{"text":" \u0020 ⑤ ","color":"#bac2de","font":"tulip:actionbar"},{"score":{"name":"@s","objective":"player.defense"},"color":"#bac2de","font":"tulip:actionbar"}]

execute if entity @s[tag=gateway.player_in_crouch_range] if score heart temp_store.heart_beat matches 1..10 run title @s actionbar ["",{"text":"Ⓖ "},{"text":"crouch to transport"}]
execute if entity @s[tag=gateway.player_in_crouch_range] unless score heart temp_store.heart_beat matches 1..10 run title @s actionbar ["",{"text":"Ⓗ "},{"text":"crouch to transport"}]

# display current level
execute unless entity @s[tag=gateway.player_in_crouch_range] if score @s temp_store.player_tool_eligible matches 1..2 run function tulip_skill:system/level/show_tool