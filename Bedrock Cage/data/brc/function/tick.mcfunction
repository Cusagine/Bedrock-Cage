# After Load run
execute unless data storage brc:core Load.SetUp run return 0
execute unless data storage brc:core Load.CtSetUp run return 0
execute unless data storage brc:core Load.PlayerSetUp run return 0
# ingame tick
execute if data storage brc:map_info {enable_tick:1b} run function brc:tick/ingame with storage brc:map_info
# end check
execute if entity @a unless entity @a[tag=Player] unless data storage brc:map_info {id:"menu"} unless data storage brc:core Load{CtSetUp:1b} run function brc:event/no_player_end
# other in goal
execute as @e unless entity @s[tag=Player] unless entity @s[tag=Goal] unless entity @s[tag=Start] at @s if block ~ ~ ~ end_gateway at @e[tag=SelectedStart] run tp @s ~ ~ ~
# condition check
execute if data storage brc:map_info {exit_condition:"clear"} unless entity @e[tag=Target] run function brc:game_command/open_gateway
execute if data storage brc:map_info {exit_condition:"clear"} if entity @e[tag=Target] run function brc:game_command/close_gateway
# trigger check
execute as @a[tag=Player,scores={death_trigger=1..}] run function brc:event/death_trigger
execute as @a[scores={Quit=1..}] run function brc:event/quit_trigger