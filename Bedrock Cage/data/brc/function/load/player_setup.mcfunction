# Set Player
execute unless data storage brc:stage {run:1b} run tag @s add Player
execute if data storage brc:stage {run:1b} run gamemode spectator
# player Check
execute if data storage brc:core Load{PlayerSetUp:1b} run return 0
data modify storage brc:core Load.PlayerSetUp set value 1b
schedule function brc:game_command/menu 65t replace
# ct Check
execute if data storage brc:core Load.CtSetUp run return 2
execute if entity @s[gamemode=creative] run function brc:load/ct_setup
data modify storage brc:core Load.CtSetUp set value 0b