# player_saver
effect give @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,type=!player,tag=player] minecraft:resistance 3 9 true
# clear
fill -16 31 -16 15 -16 15 minecraft:air
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,type=!player,tag=!keep,tag=!player] run function brc:game_command/safe_die
# set_template
execute if data storage brc:map_info {large:0b} run function brc:game_command/small
$execute if data storage brc:map_info {large:0b} run place template $(content) 0 -16 0
$execute if data storage brc:map_info {large:1b} run place template $(content) -16 -16 -16
# map_datafit
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,type=item_frame,tag=goal] at @s run function brc:process/goal_datafit
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,limit=1,sort=random,tag=start] at @s run summon marker ~ ~ ~ {UUID:[I;-1860688829,-1059371467,-1599208222,38068281],Tags:["selected_start"],CustomName:'{"translate":"tag.brc.selected_start","fallback":"Start Point"}'}
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=start] run function brc:game_command/safe_die
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33] run data remove entity @s NoAI
## custom load part
function #brc:map_load
execute if data storage brc:stage {deduction:1b} run function #brc:deduction_load
$function brc:map/$(theme)/$(id)/load
# tp_to_start
execute at 91182443-c0db-4635-a0ae-04e20244e039 run tp @e[x=-17,y=-17,z=-17,tag=player] ~ ~ ~
execute as @a[x=-17,y=-17,z=-17,tag=player] at @s run spawnpoint
# title
title @a[x=-17,y=-17,z=-17] title {"nbt":"title","storage":"brc:map_info","interpret":true}
title @a[x=-17,y=-17,z=-17] subtitle {"nbt":"summary","storage":"brc:map_info","interpret":true}
# player_runner
$gamemode $(gamemode) @a[tag=player]
tag @a[x=-17,y=-17,z=-17] remove complete