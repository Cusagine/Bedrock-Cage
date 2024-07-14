# Start point
execute if entity @e[tag=Start] run tellraw @s {"translate":"check.brc.start.success","fallback":"Start Point(s) Exist: Yes","color":"green"}
execute unless entity @e[tag=Start] run tellraw @s {"translate":"check.brc.start.failed","fallback":"Start Point(s) Exist: No","color":"red"}
# Goal point
execute if entity @e[tag=Goal] run tellraw @s {"translate":"check.brc.goal.success","fallback":"Goal Point(s) Exist: Yes","color":"green"}
execute unless entity @e[tag=Goal] run tellraw @s {"translate":"check.brc.goal.failed","fallback":"Goal Point(s) Exist: No","color":"red"}