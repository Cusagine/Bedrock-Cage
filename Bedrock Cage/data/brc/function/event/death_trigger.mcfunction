scoreboard players set @s death_trigger 0
execute if data storage brc:map_info {death_result:"quit"} run tag @s remove Player
execute if data storage brc:map_info {death_result:"quit"} run gamemode spectator