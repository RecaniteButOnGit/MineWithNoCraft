# Enforce one shop book per player and process trigger-based shop actions.
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_data":{mwnc:{shop_book:1b}}}}}]
function minewithnocraft:shop/protect_items
execute as @a at @s run function minewithnocraft:shop/enforce_book
scoreboard players enable @a mwnc_shop
execute as @a[scores={mwnc_shop=1}] run function minewithnocraft:shop/buy/wooden_pickaxe
execute as @a[scores={mwnc_shop=2}] run function minewithnocraft:shop/buy/wooden_sword
execute as @a[scores={mwnc_shop=3}] run function minewithnocraft:shop/buy/stone_pickaxe
execute as @a[scores={mwnc_shop=4}] run function minewithnocraft:shop/buy/stone_sword
execute as @a[scores={mwnc_shop=5}] run function minewithnocraft:shop/buy/iron_pickaxe
execute as @a[scores={mwnc_shop=6}] run function minewithnocraft:shop/buy/iron_sword
execute as @a[scores={mwnc_shop=7}] run function minewithnocraft:shop/buy/gold_pickaxe
execute as @a[scores={mwnc_shop=8}] run function minewithnocraft:shop/buy/gold_sword
execute as @a[scores={mwnc_shop=9}] run function minewithnocraft:shop/buy/diamond_pickaxe
execute as @a[scores={mwnc_shop=10}] run function minewithnocraft:shop/buy/diamond_sword
execute as @a[scores={mwnc_shop=11}] run function minewithnocraft:shop/buy/netherite_pickaxe
execute as @a[scores={mwnc_shop=12}] run function minewithnocraft:shop/buy/netherite_sword
scoreboard players set @a[scores={mwnc_shop=1..}] mwnc_shop 0
