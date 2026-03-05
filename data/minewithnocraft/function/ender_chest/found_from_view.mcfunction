# Create the anchor marker at the chest block and assign ownership.
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["mwnc.ec_anchor","mwnc.ec_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=mwnc.ec_new,limit=1,sort=nearest] mwnc_ch_owner = #ch_owner_id mwnc_calc
tag @e[type=minecraft:marker,tag=mwnc.ec_new,limit=1,sort=nearest] remove mwnc.ec_new
scoreboard players set #ch_found mwnc_calc 1
