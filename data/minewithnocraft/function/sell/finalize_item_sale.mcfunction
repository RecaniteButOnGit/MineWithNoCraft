# Convert stack size into payout and credit the nearest player at the beacon.
execute store result score #stack_items mwnc_calc run data get entity @s Item.count 1
scoreboard players operation #stack_count mwnc_calc = #stack_items mwnc_calc
scoreboard players operation #stack_count mwnc_calc *= #sale_value mwnc_calc
scoreboard players set #paid mwnc_calc 0
execute at @s store success score #paid mwnc_calc run scoreboard players operation @p[distance=..12,sort=nearest,limit=1] mwnc_money += #stack_count mwnc_calc
execute if score #paid mwnc_calc matches 1 if score #tutorial_stage mwnc_calc matches 1..2 if items entity @s contents #minecraft:logs run scoreboard players operation #tutorial_logs_sold mwnc_calc += #stack_items mwnc_calc
execute if score #paid mwnc_calc matches 1 run scoreboard players operation #particle_budget mwnc_calc = #stack_count mwnc_calc
execute if score #paid mwnc_calc matches 1 if score #particle_budget mwnc_calc matches 257.. run scoreboard players set #particle_budget mwnc_calc 256
execute if score #paid mwnc_calc matches 1 run scoreboard players set #particle_size mwnc_calc 0
execute if score #paid mwnc_calc matches 1 if score #stack_count mwnc_calc matches 257..512 run scoreboard players set #particle_size mwnc_calc 1
execute if score #paid mwnc_calc matches 1 if score #stack_count mwnc_calc matches 513..1024 run scoreboard players set #particle_size mwnc_calc 2
execute if score #paid mwnc_calc matches 1 if score #stack_count mwnc_calc matches 1025.. run scoreboard players set #particle_size mwnc_calc 3
execute if score #paid mwnc_calc matches 1 at @s run function minewithnocraft:sell/emit_sale_particles
execute if score #paid mwnc_calc matches 1 at @s run playsound minecraft:entity.experience_orb.pickup master @a[distance=..20] ~ ~ ~ 0.8 1.25
execute if score #paid mwnc_calc matches 1 run kill @s
