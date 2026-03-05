scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:netherite_pickaxe[custom_data={mwnc:{shop_pick_netherite:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"You already have a Netherite Pickaxe.","color":"red"}]
execute if score #owned_item mwnc_calc matches 0 if score @s mwnc_money matches 1000000.. run function minewithnocraft:shop/buy/netherite_pickaxe_success
execute if score #owned_item mwnc_calc matches 0 unless score @s mwnc_money matches 1000000.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Need $1,000,000 for a Netherite Pickaxe.","color":"red"}]
