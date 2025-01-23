scoreboard players set @s death_trigger 0
execute unless entity @s[tag=player] run return 0
# if quit
execute if data storage brc:map_info {death_result:"quit"} run tag @s remove player
execute if data storage brc:map_info {death_result:"quit"} run gamemode spectator