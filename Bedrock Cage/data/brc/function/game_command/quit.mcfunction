tag @s remove Player
tellraw @a {"translate":"message.brc.quited","with":[{"selector":"@s"}],"fallback":"%s quitted.","color":"yellow"}