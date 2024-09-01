scoreboard players remove @s CondebErosionTimer 1
particle splash ~ ~ ~ 0.3 0.5 0.3 0.1 10
execute if entity @s[type=#arrows] run function condeb:erosion/arrow_extinguish
execute unless predicate condeb:erosion_check run return run function condeb:erosion/clear
execute unless entity @s[type=#arrows] if score @s CondebErosionTimer matches ..0 run return run function condeb:erosion/clear