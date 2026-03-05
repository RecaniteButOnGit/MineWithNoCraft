# Refresh bound item names so existing items stop showing raw JSON text.

# Compass
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:compass[custom_data={mwnc:{bound_compass:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:compass[custom_data={mwnc:{bound_compass:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run function minewithnocraft:player/give_compass

# Torch
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:torch[custom_data={mwnc:{bound_torch:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:torch[custom_data={mwnc:{bound_torch:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run function minewithnocraft:player/give_torch

# Wooden
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:wooden_pickaxe[custom_data={mwnc:{shop_pick_wooden:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:wooden_pickaxe[custom_data={mwnc:{shop_pick_wooden:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:wooden_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_wooden:1b}},custom_name={text:"Wooden Pickaxe",color:"#8B5A2B",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:wooden_sword[custom_data={mwnc:{shop_sword_wooden:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:wooden_sword[custom_data={mwnc:{shop_sword_wooden:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:wooden_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_wooden:1b}},custom_name={text:"Wooden Sword",color:"#8B5A2B",italic:false},enchantment_glint_override=true] 1

# Stone
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_pick_stone:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_pick_stone:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_stone:1b}},custom_name={text:"Stone Pickaxe",color:"dark_gray",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:stone_sword[custom_data={mwnc:{shop_sword_stone:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:stone_sword[custom_data={mwnc:{shop_sword_stone:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:stone_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_stone:1b}},custom_name={text:"Stone Sword",color:"dark_gray",italic:false},enchantment_glint_override=true] 1

# Copper (legacy)
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_pick_copper:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_pick_copper:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_copper:1b}},custom_name={text:"Copper Pickaxe",color:"gold",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:stone_sword[custom_data={mwnc:{shop_sword_copper:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:stone_sword[custom_data={mwnc:{shop_sword_copper:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:stone_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_copper:1b}},custom_name={text:"Copper Sword",color:"gold",italic:false},enchantment_glint_override=true] 1

# Iron
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:iron_pickaxe[custom_data={mwnc:{shop_pick_iron:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:iron_pickaxe[custom_data={mwnc:{shop_pick_iron:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:iron_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_iron:1b}},custom_name={text:"Iron Pickaxe",color:"#C0C0C0",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:iron_sword[custom_data={mwnc:{shop_sword_iron:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:iron_sword[custom_data={mwnc:{shop_sword_iron:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:iron_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_iron:1b}},custom_name={text:"Iron Sword",color:"#C0C0C0",italic:false},enchantment_glint_override=true] 1

# Gold
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:golden_pickaxe[custom_data={mwnc:{shop_pick_gold:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:golden_pickaxe[custom_data={mwnc:{shop_pick_gold:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:golden_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_gold:1b}},custom_name={text:"Gold Pickaxe",color:"yellow",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:golden_sword[custom_data={mwnc:{shop_sword_gold:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:golden_sword[custom_data={mwnc:{shop_sword_gold:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:golden_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_gold:1b}},custom_name={text:"Gold Sword",color:"yellow",italic:false},enchantment_glint_override=true] 1

# Diamond
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:diamond_pickaxe[custom_data={mwnc:{shop_pick_diamond:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:diamond_pickaxe[custom_data={mwnc:{shop_pick_diamond:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:diamond_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_diamond:1b}},custom_name={text:"Diamond Pickaxe",color:"dark_aqua",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:diamond_sword[custom_data={mwnc:{shop_sword_diamond:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:diamond_sword[custom_data={mwnc:{shop_sword_diamond:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:diamond_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_diamond:1b}},custom_name={text:"Diamond Sword",color:"dark_aqua",italic:false},enchantment_glint_override=true] 1

# Netherite
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:netherite_pickaxe[custom_data={mwnc:{shop_pick_netherite:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:netherite_pickaxe[custom_data={mwnc:{shop_pick_netherite:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:netherite_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_netherite:1b}},custom_name={text:"Netherite Pickaxe",color:"dark_gray",italic:false},enchantment_glint_override=true] 1
scoreboard players set #owned_item mwnc_calc 0
execute store result score #owned_item mwnc_calc run clear @s minecraft:netherite_sword[custom_data={mwnc:{shop_sword_netherite:1b}}] 0
execute if score #owned_item mwnc_calc matches 1.. run clear @s minecraft:netherite_sword[custom_data={mwnc:{shop_sword_netherite:1b}}]
execute if score #owned_item mwnc_calc matches 1.. run give @s minecraft:netherite_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_netherite:1b}},custom_name={text:"Netherite Sword",color:"dark_gray",italic:false},enchantment_glint_override=true] 1


