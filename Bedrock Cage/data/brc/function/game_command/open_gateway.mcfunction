execute as @e[type=item_frame,tag=Goal] at @s run setblock ~ ~ ~ minecraft:end_gateway
#tellraw @a {"translate":"game_command.brc.open_gateway","fallback":"Gateway opened.","color":"yellow"}