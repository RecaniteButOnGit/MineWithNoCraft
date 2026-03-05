# Pick a random beacon position centered on spawn:
# - within 10 blocks
# - strictly more than 5 blocks away
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] run tag @s remove mwnc.beacon_initialized
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1] at @s run spreadplayers ~ ~ 0 10 false @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1]
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run tp @s ~ 0 ~
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s if entity @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1,distance=..5] run function minewithnocraft:randomize_beacon_position
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s unless entity @e[type=minecraft:marker,tag=mwnc.spawn_anchor,limit=1,distance=..5] run tag @s add mwnc.beacon_initialized
