scoreboard players remove @s mwnc_money 2500
give @s minecraft:golden_pickaxe[custom_data={mwnc:{shop_bound:1b,shop_pick_gold:1b}},custom_name={text:"Gold Pickaxe",color:"yellow",italic:false},enchantment_glint_override=true] 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.3
tellraw @s [{"text":"[Shop] ","color":"gold"},{"text":"Bought Gold Pickaxe for $2,500.","color":"green"}]
