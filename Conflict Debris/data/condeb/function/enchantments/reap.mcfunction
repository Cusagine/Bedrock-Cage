execute as @e[tag=condeb.reap.victim] at @s if score @n[tag=condeb.reap.attacker,distance=..128] CondebOutput >= @s CondebHealth run function condeb:enchantments/reap/damage
tag @e remove condeb.reap.attacker
tag @e remove condeb.reap.victim