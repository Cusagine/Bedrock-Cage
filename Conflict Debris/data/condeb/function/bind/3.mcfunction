execute unless predicate condeb:bind_check run return fail
tag @s add condeb.bind
scoreboard players set @s CondebBindTimer 160
attribute @s generic.gravity modifier add condeb:bind 2 add_value
attribute @s generic.movement_speed modifier add condeb:bind -1 add_multiplied_total
attribute @s generic.flying_speed modifier add condeb:bind -2048 add_value
attribute @s generic.knockback_resistance modifier add condeb:bind 1 add_value