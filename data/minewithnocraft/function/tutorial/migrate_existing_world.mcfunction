# Existing worlds skip the intro tutorial and remain fully unlocked.
scoreboard players set #tutorial_stage mwnc_calc 4
scoreboard players set #tutorial_timer mwnc_calc 0
scoreboard players set #tutorial_logs_sold mwnc_calc 0
execute in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["mwnc.tutorial_state_v1"]}
