# Remove all shop books while tutorial has not unlocked them.
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_data":{mwnc:{shop_book:1b}}}}}]
clear @a minecraft:written_book[custom_data={mwnc:{shop_book:1b,ver:5b}}]
clear @a minecraft:written_book[custom_data={mwnc:{shop_book:1b}}]
