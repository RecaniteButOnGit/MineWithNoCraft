# Per-player chest ownership, reclaim, and locked UI logic.
scoreboard players add @a mwnc_ch_id 0
scoreboard players add @a mwnc_ch_open_seen 0
scoreboard players add @a mwnc_ch_used_seen 0
execute as @a[scores={mwnc_ch_id=0}] run function minewithnocraft:ender_chest/assign_id
execute as @a if score @s mwnc_ch_used > @s mwnc_ch_used_seen run function minewithnocraft:ender_chest/register_from_view
scoreboard players operation @a mwnc_ch_used_seen = @a mwnc_ch_used
execute as @a if score @s mwnc_ch_open > @s mwnc_ch_open_seen run function minewithnocraft:ender_chest/on_open
scoreboard players operation @a mwnc_ch_open_seen = @a mwnc_ch_open
execute as @a run function minewithnocraft:ender_chest/player_tick
