scoreboard players remove @s mwnc_money 10000
give @s minecraft:netherite_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_netherite:1b}},custom_name={text:"Netherite Pickaxe",color:"dark_gray",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Netherite Pickaxe for $10,000.","color":"green"}]
