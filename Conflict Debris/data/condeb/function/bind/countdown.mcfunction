scoreboard players remove @s CondebBindTimer 1
particle block{block_state:"cobweb"} ~ ~ ~ 0.3 0 0.3 0.1 10
execute unless predicate condeb:bind_check run return run function condeb:bind/clear
execute if score @s CondebBindTimer matches ..0 run return run function condeb:bind/clear