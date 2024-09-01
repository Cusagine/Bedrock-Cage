tag @s add condeb.reap.attacker
function condeb:tick/objectives_update
scoreboard players operation @s CondebOutput = @s CondebDamage
schedule function condeb:enchantments/reap 1t