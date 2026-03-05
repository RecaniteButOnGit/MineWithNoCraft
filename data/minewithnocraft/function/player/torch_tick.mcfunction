# Keep one bound torch per player and remove dropped copies.
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:torch",components:{"minecraft:custom_data":{mwnc:{bound_torch:1b}}}}}]
execute as @a run function minewithnocraft:player/torch_enforce
