execute in minecraft:overworld unless entity @e[type=minecraft:marker,tag=mwnc.beacon_anchor,limit=1] run function minewithnocraft:init_beacon_anchor
execute as @a run function minewithnocraft:player/compass_enforce
tellraw @a [{"text":"This is your beacon, it is where you will sell blocks! go ahead, mine a nearby tree and throw it in!","color":"yellow"}]
scoreboard players set #tutorial_stage mwnc_calc 1
