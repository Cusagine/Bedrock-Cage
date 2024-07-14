function brc:process/player_saver
function brc:process/clear
execute if data storage brc:map_info {large:0b} run function brc:process/set_template with storage brc:map_info
execute if data storage brc:map_info {large:1b} run function brc:process/set_template_large with storage brc:map_info
function brc:process/map_datafit
function brc:process/tp_to_start
function brc:process/title
function brc:process/player_runner with storage brc:map_info