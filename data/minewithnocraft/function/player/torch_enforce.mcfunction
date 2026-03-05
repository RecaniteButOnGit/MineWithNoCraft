# Ensure each player has exactly one bound torch in inventory.
scoreboard players set #torch_count mwnc_calc 0
scoreboard players set #bound_torch_count mwnc_calc 0
execute store result score #torch_count mwnc_calc run clear @s minecraft:torch 0
execute store result score #bound_torch_count mwnc_calc run clear @s minecraft:torch[custom_data={mwnc:{bound_torch:1b}}] 0
execute unless score #torch_count mwnc_calc matches 1 run clear @s minecraft:torch
execute unless score #torch_count mwnc_calc matches 1 run function minewithnocraft:player/give_torch
execute if score #torch_count mwnc_calc matches 1 unless score #bound_torch_count mwnc_calc matches 1 run clear @s minecraft:torch
execute if score #torch_count mwnc_calc matches 1 unless score #bound_torch_count mwnc_calc matches 1 run function minewithnocraft:player/give_torch
