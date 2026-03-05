# Safe objective/bootstrap setup for reloads and migrated worlds.
scoreboard objectives add mwnc_money dummy
scoreboard objectives add mwnc_calc dummy
scoreboard objectives add mwnc_shop trigger
scoreboard objectives add mwnc_ch_open minecraft.custom:minecraft.open_chest
scoreboard objectives add mwnc_ch_open_seen dummy
scoreboard objectives add mwnc_ch_used minecraft.used:minecraft.chest
scoreboard objectives add mwnc_ch_used_seen dummy
scoreboard objectives add mwnc_ch_id dummy
scoreboard objectives add mwnc_ch_owner dummy
scoreboard players set $dirt_price mwnc_calc 1
scoreboard players set $wood_price mwnc_calc 2
scoreboard players add #sale_value mwnc_calc 0
scoreboard players add #stack_count mwnc_calc 0
scoreboard players add #stack_items mwnc_calc 0
scoreboard players add #paid mwnc_calc 0
scoreboard players add #particle_budget mwnc_calc 0
scoreboard players add #particle_size mwnc_calc 0
scoreboard players add #fx_timer mwnc_calc 0
scoreboard players add #torch_count mwnc_calc 0
scoreboard players add #bound_torch_count mwnc_calc 0
scoreboard players add #tutorial_stage mwnc_calc 0
scoreboard players add #tutorial_timer mwnc_calc 0
scoreboard players add #tutorial_logs_sold mwnc_calc 0
scoreboard players add #sat_timer mwnc_calc 0
scoreboard players add #next_ch_id mwnc_calc 0
execute if score #next_ch_id mwnc_calc matches ..0 run scoreboard players set #next_ch_id mwnc_calc 1
execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["mwnc.objectives_ready_v3"]}
