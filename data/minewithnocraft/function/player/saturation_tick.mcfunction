# Keep saturation active at a low pulse rate.
scoreboard players add #sat_timer mwnc_calc 1
execute if score #sat_timer mwnc_calc matches 100.. run function minewithnocraft:player/saturation_pulse
