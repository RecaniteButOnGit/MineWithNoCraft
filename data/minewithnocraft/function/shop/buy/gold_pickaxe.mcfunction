scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:golden_pickaxe[custom_data={mwnc:{shop_pick_gold:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"You already have a Gold Pickaxe.","color":"red"}]
execute if score #owned_item mwnc_calc matches 0 if score @s mwnc_money matches 2500.. run function minewithnocraft:shop/buy/gold_pickaxe_success
execute if score #owned_item mwnc_calc matches 0 unless score @s mwnc_money matches 2500.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Need $2,500 for a Gold Pickaxe.","color":"red"}]
