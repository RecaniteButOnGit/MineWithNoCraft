# First-time tutorial progression.
execute if score #tutorial_stage mwnc_calc matches 0 run scoreboard players add #tutorial_timer mwnc_calc 1
execute if score #tutorial_stage mwnc_calc matches 0 if score #tutorial_timer mwnc_calc matches 40 run tellraw @a [{"text":"Hi, welcome to Mine with no Craft, a Minecraft Datapack that completly changes how you play!","color":"yellow"}]
execute if score #tutorial_stage mwnc_calc matches 0 if score #tutorial_timer mwnc_calc matches 140 run function minewithnocraft:tutorial/start_beacon_stage
execute if score #tutorial_stage mwnc_calc matches 1 if score #tutorial_logs_sold mwnc_calc matches 1.. run function minewithnocraft:tutorial/after_first_log
execute if score #tutorial_stage mwnc_calc matches 2 if score #tutorial_logs_sold mwnc_calc matches 4.. run function minewithnocraft:tutorial/unlock_shop_book
