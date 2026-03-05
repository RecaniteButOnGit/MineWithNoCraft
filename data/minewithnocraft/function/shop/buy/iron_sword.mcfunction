scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:iron_sword[custom_data={mwnc:{shop_sword_iron:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"You already have a Iron Sword.","color":"red"}]
execute if score #owned_item mwnc_calc matches 0 if score @s mwnc_money matches 1000.. run function minewithnocraft:shop/buy/iron_sword_success
execute if score #owned_item mwnc_calc matches 0 unless score @s mwnc_money matches 1000.. run tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Need $1,000 for a Iron Sword.","color":"red"}]
