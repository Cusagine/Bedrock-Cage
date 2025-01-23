# --- next schedule ---
schedule function brc:routine_1s 1s replace
# After Load run
execute unless data storage brc:core load.player_setup run return 0
# end check
execute unless data storage brc:core load{ct_setup:1b} unless data storage brc:map_info {id:"menu"} if entity @a[x=-17,y=-17,z=-17] unless entity @a[x=-17,y=-17,z=-17,tag=player] run function brc:event/no_player_end
# condition check
execute if data storage brc:map_info {exit_condition:"clear"} unless entity @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=target] run function brc:game_command/open_gateway
execute if data storage brc:map_info {exit_condition:"clear"} if entity @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=target] run function brc:game_command/close_gateway
# trigger check
execute as @a[x=-17,y=-17,z=-17,tag=player,scores={death_trigger=1..}] run function brc:event/death_trigger
execute as @a[x=-17,y=-17,z=-17,scores={quit=1..}] run function brc:event/quit_trigger