kill @e[type=item,nbt={Item:{id:"minecraft:writable_book"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]
clear @a minecraft:written_book
clear @a minecraft:writable_book
setblock 15 2 -6 minecraft:air
setblock 15 2 -6 minecraft:chiseled_bookshelf[facing=west,slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=false]{Items:[{Slot:1b,components:{"minecraft:item_name":'{"fallback":"Change Theme","translate":"item.brc.theme_book"}',"minecraft:writable_book_content":{pages:[{raw:""}]}},count:1,id:"minecraft:writable_book"}],last_interacted_slot:1}
setblock 14 3 -6 minecraft:air
setblock 14 3 -6 minecraft:oak_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"purple",has_glowing_text:0b,messages:['{"fallback":"Current Theme:","translate":"map.brc.menu.sign_text.current_theme","bold":true}','{"storage":"brc:theme_info","nbt":"title","interpret":true}','{"storage":"brc:theme_info","nbt":"summary","interpret":true}','["(",{"storage":"brc:theme_info","nbt":"id"},")"]']},is_waxed:1b}