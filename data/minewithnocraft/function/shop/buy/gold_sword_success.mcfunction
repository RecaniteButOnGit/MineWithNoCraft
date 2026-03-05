scoreboard players remove @s mwnc_money 2500
give @s minecraft:golden_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_gold:1b}},custom_name={text:"Gold Sword",color:"yellow",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Gold Sword for $2,500.","color":"green"}]
