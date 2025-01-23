execute if data storage brc:core load{set_up:0b} run return run tellraw @a {"translate":"message.brc.fail_load","fallback":"Bedrock Cage is not initialized. Please select world type \"Bedrock Cage\".","color":"red"}
# Set Player
title @s times 10t 1s 10t
execute unless data storage brc:stage {run:1b} run tag @s add player
execute unless data storage brc:stage {run:1b} run scoreboard players enable @s quit
execute if data storage brc:stage {run:1b} run gamemode spectator
# player Check
execute if data storage brc:core load{player_setup:1b} run return 2
data modify storage brc:core load.player_setup set value 1b
schedule function brc:game_command/menu 1s replace
# ct Check
execute if data storage brc:core load.ct_setup run return 3
execute if entity @s[gamemode=creative] run function brc:load/ct_setup
execute unless data storage brc:core load{ct_setup:1b} run data modify storage brc:core load.ct_setup set value 0b