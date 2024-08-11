function brc:process/player_saver
execute if data storage brc:map_info {large:0b} run function brc:game_command/small
execute if data storage brc:map_info {large:1b} run function brc:game_command/large
execute as @e[type=item_frame,tag=Goal] run data remove entity @s Item
execute as @e[type=item_frame,tag=Goal] run data modify entity @s Invisible set value 1b
execute if data storage brc:map_info {exit_state:1b} as @e[tag=Goal] at @s run setblock ~ ~ ~ minecraft:end_gateway
execute as @e[type=!marker,tag=Start] at @s summon minecraft:marker run tag @s add Start
execute as @e[type=!marker,tag=Start] run tp @s ~ -100 ~
execute as @e[type=!marker,tag=Start] run kill @s
execute as @e run data remove entity @s NoAI
function brc:process/tp_to_start
function brc:process/title
gamemode survival @a[tag=Player]
execute as @e[type=!player,tag=Player] run data merge entity @s {Invulnerable:0b}