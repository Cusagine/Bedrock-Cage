tag @s remove Complete
playsound minecraft:block.stone.step player @s
function brc:game_command/uncomplete/gamemode with storage brc:map_info
execute at @e[tag=SelectedStart] run tp @s ~ ~ ~