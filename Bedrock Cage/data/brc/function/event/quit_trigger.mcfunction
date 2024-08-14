scoreboard players set @s Quit 0
scoreboard players enable @s Quit
execute unless entity @s[tag=Player] run return 0
# main
tag @s remove Player
execute if data storage brc:stage {run:1b} run damage @s 4222433 brc:quit
execute if data storage brc:stage {run:1b} run gamemode spectator
execute if data storage brc:stage {run:0b} run tellraw @a {"translate":"game_command.brc.quited","with":[{"selector":"@s"}],"fallback":"%s quitted.","color":"yellow"}