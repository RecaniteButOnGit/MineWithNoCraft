scoreboard players remove @s mwnc_money 500
give @s minecraft:stone_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_copper:1b}},custom_name={text:"Copper Pickaxe",color:"gold",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Copper Pickaxe for $500.","color":"green"}]

