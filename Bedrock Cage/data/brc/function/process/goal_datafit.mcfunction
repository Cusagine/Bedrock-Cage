data remove entity @s Item
data modify entity @s Invisible set value 1b
data modify entity @s Invulnerable set value 1b
execute if data storage brc:map_info {exit_state:1b} run setblock ~ ~ ~ minecraft:end_gateway