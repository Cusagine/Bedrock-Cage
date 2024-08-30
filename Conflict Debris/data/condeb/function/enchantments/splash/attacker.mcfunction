tag @s add condeb.splash.attacker
function condeb:tick/objectives_update
scoreboard players operation @s CondebOutput = @s CondebDamage
scoreboard players set @s CondebCache 5
scoreboard players operation @s CondebOutput /= @s CondebCache
scoreboard players reset @s CondebCache
execute store result storage brxt:cache CondebSplashDamage double 0.01 run scoreboard players get @s CondebOutput
scoreboard players reset @s CondebOutput