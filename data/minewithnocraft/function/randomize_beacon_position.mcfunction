# Pick a deterministic beacon position near spawn using world-seeded randomness:
# - within 10 blocks
# - strictly more than 5 blocks away
random reset minewithnocraft:beacon_seed 24062026 true true
scoreboard players set #beacon_pick mwnc_calc 0
execute store result score #beacon_pick mwnc_calc run random value 0..15 minewithnocraft:beacon_seed

execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 0 run tp @s ~6 0 ~0
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 1 run tp @s ~-6 0 ~0
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 2 run tp @s ~0 0 ~6
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 3 run tp @s ~0 0 ~-6
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 4 run tp @s ~7 0 ~3
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 5 run tp @s ~-7 0 ~3
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 6 run tp @s ~7 0 ~-3
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 7 run tp @s ~-7 0 ~-3
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 8 run tp @s ~3 0 ~7
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 9 run tp @s ~-3 0 ~7
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 10 run tp @s ~3 0 ~-7
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 11 run tp @s ~-3 0 ~-7
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 12 run tp @s ~8 0 ~4
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 13 run tp @s ~-8 0 ~4
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 14 run tp @s ~8 0 ~-4
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] if score #beacon_pick mwnc_calc matches 15 run tp @s ~-8 0 ~-4

execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] run tag @s add mwnc.beacon_initialized
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor_backup,limit=1] run summon minecraft:marker ~ 0 ~ {Tags:["mwnc.beacon_anchor_backup"]}
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run tp @e[type=minecraft:marker,tag=mwnc.beacon_anchor_backup,limit=1] ~ 0 ~
