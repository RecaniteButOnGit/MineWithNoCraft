# Runs once when the datapack is loaded or reloaded.
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.objectives_ready_v3,limit=1] run function minewithnocraft:ensure_objectives
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.setup_done,limit=1] run function minewithnocraft:setup_once
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.tutorial_state_v1,limit=1] run function minewithnocraft:tutorial/migrate_existing_world
gamerule doLimitedCrafting true
gamerule doDaylightCycle false
execute in minecraft:overworld run time set day
recipe take @a *
scoreboard players add #fx_timer mwnc_calc 0
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] run summon minecraft:marker ~ 0 ~ {Tags:["mwnc.spawn_anchor"]}
execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor_backup,limit=1] run function minewithnocraft:init_beacon_anchor
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor_backup,limit=1] at @s unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] run summon minecraft:marker ~ 0 ~ {Tags:["mwnc.beacon_anchor"]}
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor_backup,limit=1] run summon minecraft:marker ~ 0 ~ {Tags:["mwnc.beacon_anchor_backup"]}
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] run tag @s add mwnc.beacon_initialized
execute as @a run function minewithnocraft:player/migrate_item_names
execute if score #tutorial_stage mwnc_calc matches 1.. as @a run function minewithnocraft:player/compass_enforce
execute if score #tutorial_stage mwnc_calc matches 4.. as @a run function minewithnocraft:player/torch_enforce
execute if score #tutorial_stage mwnc_calc matches 3.. as @a at @s run function minewithnocraft:shop/enforce_book
execute unless score #tutorial_stage mwnc_calc matches 3.. run function minewithnocraft:tutorial/clear_shop_books
execute if score #tutorial_stage mwnc_calc matches 4.. run tellraw @a [{"text":"[MineWithNoCraft] ","color":"gold"},{"text":"Datapack loaded.","color":"green"}]
