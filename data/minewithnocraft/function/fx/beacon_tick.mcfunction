# Continuous beacon visuals with a soft periodic sound pulse.
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 0.35 1.5 0.35 0.01 8 force
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run particle minecraft:end_rod ~ ~0.2 ~ 0.45 0.45 0.45 0.01 6 force
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run particle minecraft:happy_villager ~ ~0.4 ~ 0.6 0.4 0.6 0.02 4 force
scoreboard players add #fx_timer mwnc_calc 1
execute if score #fx_timer mwnc_calc matches 20.. run function minewithnocraft:fx/beacon_pulse
