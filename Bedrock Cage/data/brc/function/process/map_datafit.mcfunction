execute as @e[type=item_frame,tag=Goal] run data remove entity @s Item
execute as @e[type=item_frame,tag=Goal] run data modify entity @s Invisible set value 1b
execute if data storage brc:map_info {exit_state:1b} as @e[tag=Goal] at @s run setblock ~ ~ ~ minecraft:end_gateway
execute as @e[type=!marker,tag=Start] at @s summon minecraft:marker run tag @s add Start
execute as @e[type=!marker,tag=Start] run tp @s ~ -100 ~
execute as @e[type=!marker,tag=Start] run kill @s
execute as @e run data remove entity @s NoAI