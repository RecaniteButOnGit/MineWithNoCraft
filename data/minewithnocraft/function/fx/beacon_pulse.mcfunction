# Once-per-second pulse to keep audio noticeable but not spammy.
scoreboard players set #fx_timer mwnc_calc 0
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..56] ~ ~ ~ 0.7 1.15
execute in minecraft:overworld as @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] at @s run particle minecraft:firework ~ ~1 ~ 0.45 0.9 0.45 0.02 12 force
