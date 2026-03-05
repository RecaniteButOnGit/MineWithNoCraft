scoreboard players remove @s mwnc_money 5000
give @s minecraft:diamond_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_diamond:1b}},custom_name={text:"Diamond Sword",color:"dark_aqua",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Diamond Sword for $5,000.","color":"green"}]

