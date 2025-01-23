# After Load run
execute unless data storage brc:core load.player_setup run return 0
# ingame tick
execute if data storage brc:map_info {enable_tick:1b} run function brc:tick/ingame with storage brc:map_info
# other in goal
execute as @e[tag=!player,tag=!goal,tag=!start] at @s if block ~ ~ ~ end_gateway at 91182443-c0db-4635-a0ae-04e20244e039 run tp @s ~ ~ ~