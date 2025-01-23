tag @s remove player
tellraw @a[x=-17,y=-17,z=-17] {"translate":"game_command.brc.quited","with":[{"selector":"@s"}],"fallback":"%s quitted.","color":"yellow"}