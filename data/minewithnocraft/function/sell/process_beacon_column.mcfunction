# Process dropped item entities in a tight column around the beacon beam.
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s positioned ~-2 -64 ~-2 as @e[type=minecraft:item,dx=4,dy=383,dz=4] run function minewithnocraft:sell/process_item
