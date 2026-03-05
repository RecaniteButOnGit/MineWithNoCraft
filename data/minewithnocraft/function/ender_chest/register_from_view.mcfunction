# Find a chest in the player's line of sight and bind it to this player.
scoreboard players operation #ch_owner_id mwnc_calc = @s mwnc_ch_id
scoreboard players set #ch_found mwnc_calc 0
execute as @e[type=minecraft:marker,tag=mwnc.ec_anchor] if score @s mwnc_ch_owner = #ch_owner_id mwnc_calc run kill @s
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^1.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^2.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^3.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^4.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^5.5 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
execute if score #ch_found mwnc_calc matches 0 anchored eyes positioned ^ ^ ^6 if block ~ ~ ~ minecraft:chest run function minewithnocraft:ender_chest/found_from_view
