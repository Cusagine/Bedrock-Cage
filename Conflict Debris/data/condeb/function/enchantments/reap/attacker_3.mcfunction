tag @s add condeb.reap.attacker
function condeb:tick/objectives_update
scoreboard players operation @s CondebOutput = @s CondebDamage
scoreboard players set @s CondebCache 5
scoreboard players operation @s CondebOutput /= @s CondebCache
scoreboard players operation @s CondebCache = @s CondebDamage
scoreboard players operation @s CondebOutput += @s CondebCache
scoreboard players reset @s CondebCache
schedule function condeb:enchantments/reap 1t