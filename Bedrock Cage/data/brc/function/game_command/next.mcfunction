# condition check
execute if entity @a[x=-17,y=-17,z=-17,tag=player,tag=!complete] run return fail
execute if data storage brc:map_info {exit_condition:"clear"} if entity @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=target] as @a[x=-17,y=-17,z=-17,tag=player] run return run function brc:game_command/uncomplete
# load
function brc:game_command/next/next_pool with storage brc:map_info
function brc:process