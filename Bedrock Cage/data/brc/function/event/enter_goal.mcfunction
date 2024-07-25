advancement revoke @s only brc:event/enter_goal
execute if entity @s[tag=Complete] run return 0
execute if entity @s[tag=!Player] run return 0
# 主命令
function brc:game_command/complete
effect give @s minecraft:blindness 3 9 true
schedule function brc:game_command/next 2s