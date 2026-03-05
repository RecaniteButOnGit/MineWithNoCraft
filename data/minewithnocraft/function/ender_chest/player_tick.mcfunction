# Resolve the current player's owned chest marker.
scoreboard players operation #ch_owner_id mwnc_calc = @s mwnc_ch_id
tag @e[type=minecraft:marker,tag=mwnc.ec_owned] remove mwnc.ec_owned
execute as @e[type=minecraft:marker,tag=mwnc.ec_anchor] if score @s mwnc_ch_owner = #ch_owner_id mwnc_calc run tag @s add mwnc.ec_owned

# If the player moved more than 5 blocks from their chest, reclaim it.
execute if entity @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] unless entity @e[type=minecraft:marker,tag=mwnc.ec_owned,distance=..5,limit=1] run function minewithnocraft:ender_chest/reclaim

# If their chest block was broken, immediately reclaim to inventory.
scoreboard players set #ch_missing mwnc_calc 0
execute as @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] at @s unless block ~ ~ ~ minecraft:chest run scoreboard players set #ch_missing mwnc_calc 1
execute if score #ch_missing mwnc_calc matches 1 run function minewithnocraft:ender_chest/reclaim

# "Shop" button: if slot 26 changes, reclaim the chest.
scoreboard players set #ch_button_missing mwnc_calc 0
execute as @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] at @s unless items block ~ ~ ~ container.26 minecraft:red_stained_glass run scoreboard players set #ch_button_missing mwnc_calc 1
execute if score #ch_button_missing mwnc_calc matches 1 run function minewithnocraft:ender_chest/reclaim

# Re-apply locked UI every tick.
execute as @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] at @s run function minewithnocraft:ender_chest/ui_apply
