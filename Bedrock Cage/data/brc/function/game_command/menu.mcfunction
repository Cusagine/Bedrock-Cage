data merge storage brc:stage {run:0b,progress:0,step:0}
tp @e[type=!player,tag=!Player] ~ -100 ~
kill @e[type=!player,tag=!Player]
tag @a add Player
function brc:map/brc/menu
function brc:process