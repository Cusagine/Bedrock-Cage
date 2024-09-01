execute unless predicate condeb:erosion_check run return fail
tag @s add condeb.erosion
$scoreboard players set @s CondebErosionTimer $(tick)
$execute if entity @s[type=item] store result entity @s Item.components."minecraft:damage" int $(damage_scale) run return run data get entity @s Item.components."minecraft:damage"
$attribute @s generic.attack_damage modifier add condeb:erosion $(amplifier) add_multiplied_total
$attribute @s generic.armor modifier add condeb:erosion $(amplifier) add_multiplied_total