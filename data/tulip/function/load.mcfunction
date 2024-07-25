# tulip /reload


# scoreboards
scoreboard objectives add tulip.config dummy
scoreboard objectives add tulip.defs dummy

# numbers
scoreboard players set 0 tulip.defs 0
scoreboard players set 1 tulip.defs 1
scoreboard players set 2 tulip.defs 2
scoreboard players set 3 tulip.defs 3
scoreboard players set 4 tulip.defs 4
scoreboard players set 5 tulip.defs 5
scoreboard players set 6 tulip.defs 6
scoreboard players set 7 tulip.defs 7
scoreboard players set 8 tulip.defs 8
scoreboard players set 9 tulip.defs 9
scoreboard players set 10 tulip.defs 10
scoreboard players set 11 tulip.defs 11
scoreboard players set 12 tulip.defs 12
scoreboard players set 20 tulip.defs 20

# world
execute unless score enforce_gamerules tulip.config matches 0 run gamerule announceAdvancements false
execute unless score enforce_gamerules tulip.config matches 0 run gamerule commandBlockOutput false
#gamerule doLimitedCrafting true
execute unless score enforce_gamerules tulip.config matches 0 run gamerule keepInventory true
execute unless score enforce_gamerules tulip.config matches 0 run gamerule mobGriefing false
execute unless score enforce_gamerules tulip.config matches 0 run gamerule sendCommandFeedback false
#gamerule showCoordinates false (1.20)
#gamerule showTags false (1.20)

# bossbars
execute unless score enforce_bossbar tulip.config matches 0 run bossbar add tulip:ver ""
execute unless score enforce_bossbar tulip.config matches 0 run bossbar set tulip:ver max 12
execute if score enforce_bossbar tulip.config matches 0 run bossbar remove tulip:ver

# uuid
scoreboard objectives add temp_store.uuid.0 dummy
scoreboard objectives add temp_store.uuid.1 dummy
scoreboard objectives add temp_store.uuid.2 dummy
scoreboard objectives add temp_store.uuid.3 dummy

# stats
scoreboard objectives add player.health health
scoreboard objectives add player.defense armor
scoreboard objectives add player.food food

# heart beat
scoreboard objectives add temp_store.heart_beat dummy
forceload add 0 0 0 0
execute positioned 0 0 0 unless entity @e[type=minecraft:area_effect_cloud,tag=tulip.heart,distance=..5] run summon minecraft:area_effect_cloud 0 0 0 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Age:2147483647,Tags:["tulip.heart"]}