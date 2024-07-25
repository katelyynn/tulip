function tulip_housing:system/housing/settings/identify
scoreboard players set @e[tag=housing.temporary_settings,limit=1] housing.config.open_to_visitors 1
function tulip_housing:system/housing/settings/sfx/on
scoreboard players reset @a housing.config.open_to_visitors_option