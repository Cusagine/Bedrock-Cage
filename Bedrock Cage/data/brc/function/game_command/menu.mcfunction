schedule clear brc:game_command/next
data merge storage brc:stage {run:0b,progress:0,step:0,menu:1b}
execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,type=!player,tag=!player] run function brc:game_command/safe_die
tag @a[x=-17,y=-17,z=-17] add player
function brc:map/brc/menu
function brc:process