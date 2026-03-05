# Runs every game tick.
recipe take @a *
execute in minecraft:overworld run time set day
scoreboard players add @a mwnc_money 0
function minewithnocraft:player/saturation_tick
execute if score #tutorial_stage mwnc_calc matches 1.. run function minewithnocraft:player/compass_tick
execute if score #tutorial_stage mwnc_calc matches 4.. run function minewithnocraft:player/torch_tick
function minewithnocraft:tutorial/tick
execute if score #tutorial_stage mwnc_calc matches 1.. run function minewithnocraft:sell/process_beacon_column
execute if score #tutorial_stage mwnc_calc matches 1.. run function minewithnocraft:fx/beacon_tick
execute if score #tutorial_stage mwnc_calc matches 3.. run function minewithnocraft:shop/tick
execute unless score #tutorial_stage mwnc_calc matches 3.. run function minewithnocraft:tutorial/clear_shop_books
execute if score #tutorial_stage mwnc_calc matches 2.. as @a run title @s actionbar [{"text":"$","color":"green"},{"score":{"name":"@s","objective":"mwnc_money"},"color":"gold"}]
# Rebuild an active beacon at the saved random spawn-relative location.
execute if score #tutorial_stage mwnc_calc matches 1.. in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run fill ~-1 -64 ~-1 ~1 -64 ~1 minecraft:iron_block replace
execute if score #tutorial_stage mwnc_calc matches 1.. in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run setblock ~ -63 ~ minecraft:beacon replace
execute if score #tutorial_stage mwnc_calc matches 1.. in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run fill ~ -62 ~ ~ 319 ~ minecraft:lime_stained_glass replace
