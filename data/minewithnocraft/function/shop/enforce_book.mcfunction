# Ensure exactly one non-transferable shop book per player.
scoreboard players set #near_beacon_xz mwnc_calc 0
execute positioned ~-5 -64 ~-5 if entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor,dx=10,dy=383,dz=10,limit=1] run scoreboard players set #near_beacon_xz mwnc_calc 1
execute if score #near_beacon_xz mwnc_calc matches 0 run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b,ver:5b}}]
execute if score #near_beacon_xz mwnc_calc matches 0 run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b}}]
scoreboard players set #shop_book_count mwnc_calc 0
execute store result score #shop_book_count mwnc_calc run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b,ver:5b}}] 0
execute if score #shop_book_count mwnc_calc matches 0 run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b}}]
execute if score #shop_book_count mwnc_calc matches 2.. run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b,ver:5b}}]
execute if score #shop_book_count mwnc_calc matches 0 if score #near_beacon_xz mwnc_calc matches 1 run function minewithnocraft:shop/give_book
execute if score #shop_book_count mwnc_calc matches 2.. if score #near_beacon_xz mwnc_calc matches 1 run function minewithnocraft:shop/give_book
scoreboard players set #shop_book_count mwnc_calc 0
execute store result score #shop_book_count mwnc_calc run clear @s minecraft:written_book[custom_data={mwnc:{shop_book:1b,ver:5b}}] 0
execute if score #shop_book_count mwnc_calc matches 0 if score #near_beacon_xz mwnc_calc matches 1 run function minewithnocraft:shop/put_book_hotbar
