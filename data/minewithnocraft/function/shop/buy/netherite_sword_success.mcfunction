scoreboard players remove @s mwnc_money 10000
give @s minecraft:netherite_sword[custom_data={mwnc:{shop_bound:1b,shop_sword_netherite:1b}},custom_name={text:"Netherite Sword",color:"dark_gray",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Netherite Sword for $10,000.","color":"green"}]
