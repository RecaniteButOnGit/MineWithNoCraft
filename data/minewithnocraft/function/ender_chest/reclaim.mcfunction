# Return a deployed chest to this player's inventory and remove ownership marker.
execute as @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] at @s if block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},distance=..2,sort=nearest,limit=1]
execute if entity @e[type=minecraft:marker,tag=mwnc.ec_owned,limit=1] run give @s minecraft:chest 1
kill @e[type=minecraft:marker,tag=mwnc.ec_owned]
