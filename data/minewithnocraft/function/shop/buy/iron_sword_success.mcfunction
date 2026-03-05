scoreboard players remove @s mwnc_money 2500
give @s minecraft:iron_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_iron:1b}},custom_name={text:"Iron Sword",color:"gray",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Iron Sword for $2,500.","color":"green"}]

