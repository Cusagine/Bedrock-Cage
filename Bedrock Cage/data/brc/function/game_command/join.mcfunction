tag @s add player
tellraw @a[x=-17,y=-17,z=-17] {"translate":"game_command.brc.joined","with":[{"selector":"@s"}],"fallback":"%s joined.","color":"yellow"}