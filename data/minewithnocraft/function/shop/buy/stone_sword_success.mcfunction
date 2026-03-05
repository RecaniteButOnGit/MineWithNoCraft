scoreboard players remove @s mwnc_money 100
give @s minecraft:stone_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_stone:1b}},custom_name={text:"Stone Sword",color:"gray",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Stone Sword for $100.","color":"green"}]

