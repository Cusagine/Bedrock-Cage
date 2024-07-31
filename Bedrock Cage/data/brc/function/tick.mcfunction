# ingame tick
function brc:tick/ingame with storage brc:map_info
# other in goal
execute as @e unless entity @s[tag=Player] unless entity @s[tag=Goal] unless entity @s[tag=Start] at @s if block ~ ~ ~ end_gateway at @e[tag=SelectedStart] run tp @s ~ ~ ~
# condition check
execute if data storage brc:map_info {exit_condition:"clear"} unless entity @e[tag=Target] run function brc:game_command/open_gateway
execute if data storage brc:map_info {exit_condition:"clear"} if entity @e[tag=Target] run function brc:game_command/close_gateway
execute if data storage brc:map_info {exit_condition:"boss"} unless entity @e[tag=Boss] run function brc:game_command/open_gateway
execute if data storage brc:map_info {exit_condition:"boss"} if entity @e[tag=Boss] run function brc:game_command/close_gateway