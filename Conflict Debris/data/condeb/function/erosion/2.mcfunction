execute unless predicate condeb:erosion_check run return fail
tag @s add condeb.erosion
scoreboard players set @s CondebErosionTimer 300
execute if entity @s[type=item] store result entity @s Item.components."minecraft:damage" int 4 run return run data get entity @s Item.components."minecraft:damage"
attribute @s generic.attack_damage modifier remove condeb:erosion
attribute @s generic.armor modifier remove condeb:erosion
attribute @s generic.attack_damage modifier add condeb:erosion -0.75 add_multiplied_total
attribute @s generic.armor modifier add condeb:erosion -0.75 add_multiplied_total