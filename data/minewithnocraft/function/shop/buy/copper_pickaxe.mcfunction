scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_pick_copper:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"You already have a Copper Pickaxe.","color":"red"}]
execute if score #owned_item mwnc_calc matches 0 if score @s mwnc_money matches 500.. run function minewithnocraft:shop/buy/copper_pickaxe_success
execute if score #owned_item mwnc_calc matches 0 unless score @s mwnc_money matches 500.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Need $500 for a Copper Pickaxe.","color":"red"}]
