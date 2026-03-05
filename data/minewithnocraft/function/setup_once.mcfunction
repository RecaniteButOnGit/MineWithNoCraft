# One-time world setup for scoreboard objectives and constants.
scoreboard players set $dirt_price mwnc_calc 1
scoreboard players set $wood_price mwnc_calc 2
scoreboard players set #sale_value mwnc_calc 0
scoreboard players set #stack_count mwnc_calc 0
scoreboard players set #stack_items mwnc_calc 0
scoreboard players set #paid mwnc_calc 0
scoreboard players set #particle_budget mwnc_calc 0
scoreboard players set #particle_size mwnc_calc 0
scoreboard players set #fx_timer mwnc_calc 0
scoreboard players set #torch_count mwnc_calc 0
scoreboard players set #bound_torch_count mwnc_calc 0
scoreboard players set #tutorial_stage mwnc_calc 0
scoreboard players set #tutorial_timer mwnc_calc 0
scoreboard players set #tutorial_logs_sold mwnc_calc 0
scoreboard players set #sat_timer mwnc_calc 0
execute if score #next_ch_id mwnc_calc matches ..0 run scoreboard players set #next_ch_id mwnc_calc 1
execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["mwnc.tutorial_state_v1"]}
execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["mwnc.setup_done"]}
