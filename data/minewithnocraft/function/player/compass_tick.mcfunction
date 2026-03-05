# Keep one bound compass per player and remove dropped copies.
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:compass",components:{"minecraft:custom_data":{mwnc:{bound_compass:1b}}}}}]
execute as @a run function minewithnocraft:player/compass_enforce
