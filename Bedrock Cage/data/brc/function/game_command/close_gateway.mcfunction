execute as @e[type=item_frame,tag=Goal] at @s if block ~ ~ ~ minecraft:end_gateway run setblock ~ ~ ~ minecraft:air
#tellraw @a {"translate":"game_command.brc.close_gateway","fallback":"Gateway closed.","color":"yellow"}