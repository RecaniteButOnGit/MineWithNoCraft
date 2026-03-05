# Emit one particle per sold dollar, up to 256.
# For sales above 256, keep count capped and increase burst size tiers.
execute if score #particle_budget mwnc_calc matches 1.. if score #particle_size mwnc_calc matches 0 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.2 0.2 0.2 0.02 1 force
execute if score #particle_budget mwnc_calc matches 1.. if score #particle_size mwnc_calc matches 1 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.45 0.45 0.45 0.02 1 force
execute if score #particle_budget mwnc_calc matches 1.. if score #particle_size mwnc_calc matches 2 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.75 0.75 0.75 0.02 1 force
execute if score #particle_budget mwnc_calc matches 1.. if score #particle_size mwnc_calc matches 3 run particle minecraft:totem_of_undying ~ ~0.2 ~ 1.1 1.1 1.1 0.02 1 force
scoreboard players remove #particle_budget mwnc_calc 1
execute if score #particle_budget mwnc_calc matches 1.. run function minewithnocraft:sell/emit_sale_particles
