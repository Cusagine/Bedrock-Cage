advancement revoke @s only brc:event/enter_goal
execute if entity @s[tag=!player] if entity @s[tag=complete] run return 0
# 主命令
function brc:game_command/complete
effect give @s minecraft:blindness 3 9 true