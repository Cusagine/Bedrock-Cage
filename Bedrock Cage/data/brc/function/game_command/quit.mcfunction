tag @s remove Player
tellraw @a {"translate":"game_command.brc.quited","with":[{"selector":"@s"}],"fallback":"%s quitted.","color":"yellow"}