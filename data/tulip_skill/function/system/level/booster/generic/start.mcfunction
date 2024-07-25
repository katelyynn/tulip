# tulip leveling
## level booster
## generic start


# lower mainhand by 1
## which should (in theory) be the booster
## hopefully. these are all in one tick so
## yes? please?
execute unless score @s temp_store.player_item_booster_persistent matches 1.. run item modify entity @s weapon.mainhand tulip_skill:lower_count

# sfx
playsound minecraft:item.bottle.fill player @s
playsound minecraft:entity.allay.item_given player @s
# particle
particle minecraft:sneeze ~ ~1 ~ 0.2 0.5 0.2 0.15 30