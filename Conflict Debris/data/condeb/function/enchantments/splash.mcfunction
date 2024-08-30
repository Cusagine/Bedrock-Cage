execute as @e[tag=condeb.splash.victim_location] at @s as @e[distance=..2.5,tag=!condeb.splash.victim,tag=!condeb.splash.attacker] run function condeb:enchantments/splash/damage with storage brxt:cache {}
data remove storage brxt:cache CondebSplashDamage
tag @e remove condeb.splash.attacker
tag @e remove condeb.splash.victim
kill @e[type=minecraft:marker,tag=condeb.splash.victim_location]