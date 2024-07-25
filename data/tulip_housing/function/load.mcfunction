# tulip /reload


# housing
## /trigger housing
scoreboard objectives add housing trigger "Your house"
## player timeout
scoreboard objectives add temp_store.housing_player_timeout dummy
scoreboard players set housing_player_timeout tulip.defs 30
## housing index
scoreboard objectives add housing.index dummy
## is housing owner?
scoreboard objectives add housing.owner dummy
## housing configuration
scoreboard objectives add housing.config.open_to_visitors dummy
scoreboard objectives add housing.config.open_to_visitors_option trigger "Open to visitors"
scoreboard objectives add housing.config.lock_containers dummy
scoreboard objectives add housing.config.lock_containers_option trigger "Lock containers"
## player in house?
scoreboard objectives add temp_store.player_in_house dummy