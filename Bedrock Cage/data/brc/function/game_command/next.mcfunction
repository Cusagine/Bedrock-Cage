# condition check
execute as @a[tag=Player] unless entity @s[tag=Complete] run return fail
execute if data storage brc:map_info {exit_condition:"clear"} if entity @e[tag=Target] as @a[tag=Player] run return run function brc:game_command/uncomplete
execute if data storage brc:map_info {exit_condition:"boss"} if entity @e[tag=Boss] as @a[tag=Player] run return run function brc:game_command/uncomplete
# load
function brc:game_command/next/next_pool with storage brc:map_info
function brc:process