scoreboard players remove @s mwnc_money 10
give @s minecraft:wooden_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_wooden:1b}},custom_name={text:"Wooden Sword",color:"#8B5A2B",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Wooden Sword for $10.","color":"green"}]
