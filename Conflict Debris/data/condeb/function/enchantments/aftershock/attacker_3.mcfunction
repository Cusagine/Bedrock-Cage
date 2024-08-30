tag @s add condeb.aftershock.attacker
function condeb:tick/objectives_update
scoreboard players operation @s CondebOutput = @s CondebDamage
scoreboard players set @s CondebCache 4
scoreboard players operation @s CondebOutput /= @s CondebCache
scoreboard players reset @s CondebCache
execute store result storage brxt:cache CondebAftershockDamage double 0.01 run scoreboard players get @s CondebOutput
scoreboard players reset @s CondebOutput
data modify storage brxt:cache CondebAftershockCount set value 3
schedule function condeb:enchantments/aftershock 1t