scoreboard players remove @s mwnc_money 10
give @s minecraft:wooden_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_wooden:1b}},custom_name={text:"Wooden Pickaxe",color:"#8B5A2B",italic:false},enchantment_glint_override=true] 1
execute if score #tutorial_stage mwnc_calc matches 3 run function minewithnocraft:tutorial/complete
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Wooden Pickaxe for $10.","color":"green"}]
