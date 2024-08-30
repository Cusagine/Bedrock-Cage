# player_saver
execute as @e[type=!player,tag=Player] run data merge entity @s {Invulnerable:1b}
# clear
fill -16 31 -16 15 -16 15 minecraft:air
tp @e[type=!player,tag=!Keep,tag=!Player] ~ -100 ~
kill @e[type=!player,tag=!Keep,tag=!Player]
scoreboard players reset #brc
scoreboard players reset @e storage_1
scoreboard players reset @e storage_2
scoreboard players reset @e storage_3
# set_template
execute if data storage brc:map_info {large:0b} run function brc:game_command/small
$execute if data storage brc:map_info {large:0b} run place template $(content) 0 -16 0
execute if data storage brc:map_info {large:1b} run function brc:game_command/large
$execute if data storage brc:map_info {large:1b} run place template $(content) -16 -16 -16
# map_datafit
execute as @e[type=item_frame,tag=Goal] run data remove entity @s Item
execute as @e[type=item_frame,tag=Goal] run data modify entity @s Invisible set value 1b
execute if data storage brc:map_info {exit_state:1b} as @e[tag=Goal] at @s run setblock ~ ~ ~ minecraft:end_gateway
execute as @e[type=!marker,tag=Start] at @s summon minecraft:marker run tag @s add Start
execute as @e[type=!marker,tag=Start] run tp @s ~ -100 ~
execute as @e[type=!marker,tag=Start] run kill @s
execute as @e run data remove entity @s NoAI
## custom load part
function #brc:map_load
execute if data storage brc:stage {deduction:1b} run function #brc:deduction_load
$function brc:map/$(theme)/$(id)/load
# tp_to_start
execute as @e[limit=1,sort=random,tag=Start] run tag @s add SelectedStart
execute at @e[tag=SelectedStart] run tp @e[tag=Player] ~ ~ ~
execute as @a[tag=Player] at @s run spawnpoint
# title
title @a title {"nbt":"title","storage":"brc:map_info","interpret":true}
title @a subtitle {"nbt":"summary","storage":"brc:map_info","interpret":true}
# player_runner
$gamemode $(gamemode) @a[tag=Player]
execute as @e[type=!player,tag=Player] run data merge entity @s {Invulnerable:0b}
tag @a remove Complete