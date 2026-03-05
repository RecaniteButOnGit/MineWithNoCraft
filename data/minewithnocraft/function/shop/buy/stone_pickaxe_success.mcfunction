scoreboard players remove @s mwnc_money 250
give @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_stone:1b}},custom_name={text:"Stone Pickaxe",color:"dark_gray",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Stone Pickaxe for $250.","color":"green"}]

