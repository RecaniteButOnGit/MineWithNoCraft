# Ensure each player has exactly one bound compass in inventory.
scoreboard players set #compass_count mwnc_calc 0
execute store result score #compass_count mwnc_calc run clear @s minecraft:compass[custom_data={mwnc:{bound_compass:1b}}] 0
execute if score #compass_count mwnc_calc matches 2.. run clear @s minecraft:compass[custom_data={mwnc:{bound_compass:1b}}]
execute if score #compass_count mwnc_calc matches 0 run function minewithnocraft:player/give_compass
execute if score #compass_count mwnc_calc matches 2.. run function minewithnocraft:player/give_compass
