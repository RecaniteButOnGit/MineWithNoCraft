# Auto-smelt raw ore drops before pricing.
execute if items entity @s contents minecraft:raw_iron run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if items entity @s contents minecraft:raw_gold run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if items entity @s contents minecraft:raw_copper run data modify entity @s Item.id set value "minecraft:copper_ingot"

# Price lookup for the dropped stack.
scoreboard players set #sale_value mwnc_calc 0

# Early game basics.
execute if items entity @s contents minecraft:dirt run scoreboard players set #sale_value mwnc_calc 1
execute if items entity @s contents #minewithnocraft:sellable_wood run scoreboard players set #sale_value mwnc_calc 2
execute if items entity @s contents minecraft:cobblestone run scoreboard players set #sale_value mwnc_calc 2
execute if items entity @s contents minecraft:cobbled_deepslate run scoreboard players set #sale_value mwnc_calc 5
execute if items entity @s contents minecraft:gravel run scoreboard players set #sale_value mwnc_calc 4
execute if items entity @s contents #minewithnocraft:sellable_stone_four run scoreboard players set #sale_value mwnc_calc 4

# Ores and minerals.
execute if items entity @s contents minecraft:coal run scoreboard players set #sale_value mwnc_calc 8
execute if items entity @s contents minecraft:redstone run scoreboard players set #sale_value mwnc_calc 14
execute if items entity @s contents minecraft:lapis_lazuli run scoreboard players set #sale_value mwnc_calc 18
execute if items entity @s contents minecraft:copper_ingot run scoreboard players set #sale_value mwnc_calc 20
execute if items entity @s contents minecraft:iron_ingot run scoreboard players set #sale_value mwnc_calc 30
execute if items entity @s contents minecraft:gold_ingot run scoreboard players set #sale_value mwnc_calc 45
execute if items entity @s contents minecraft:diamond run scoreboard players set #sale_value mwnc_calc 220
execute if items entity @s contents minecraft:emerald run scoreboard players set #sale_value mwnc_calc 300

execute if score #sale_value mwnc_calc matches 1.. run function minewithnocraft:sell/finalize_item_sale
