function tulip_housing:system/housing/settings/identify
scoreboard players set @e[tag=housing.temporary_settings,limit=1] housing.config.open_to_visitors 0
function tulip_housing:system/housing/settings/sfx/off
scoreboard players reset @a housing.config.open_to_visitors_option