# Assign a stable per-player chest ownership id.
scoreboard players operation @s mwnc_ch_id = #next_ch_id mwnc_calc
scoreboard players add #next_ch_id mwnc_calc 1
