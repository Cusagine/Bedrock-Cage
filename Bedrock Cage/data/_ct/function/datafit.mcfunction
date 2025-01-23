# set_template
execute if data storage brc:map_info {large:0b} run function brc:game_command/small
execute if data storage brc:map_info {large:1b} run function brc:game_command/large
# map_datafit
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,type=item_frame,tag=goal] at @s run function brc:process/goal_datafit
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,limit=1,sort=random,tag=start] at @s run summon marker ~ ~ ~ {UUID:[I;-1860688829,-1059371467,-1599208222,38068281],Tags:["selected_start"],CustomName:'{"translate":"tag.brc.selected_start","fallback":"Start Point"}'}
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=start] run function brc:game_command/safe_die
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33] run data remove entity @s NoAI
# title
title @a[x=-17,y=-17,z=-17] title {"nbt":"title","storage":"brc:map_info","interpret":true}
title @a[x=-17,y=-17,z=-17] subtitle {"nbt":"summary","storage":"brc:map_info","interpret":true}