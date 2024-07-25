# ingame tick
function brc:tick/ingame with storage brc:map_info
# other in goal
execute as @e unless entity @s[tag=Player] unless entity @s[tag=Goal] unless entity @s[tag=Start] at @s if block ~ ~ ~ end_gateway at @e[tag=SelectedStart] run tp @s ~ ~ ~