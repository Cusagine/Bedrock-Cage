$gamemode $(gamemode) @a[tag=Player]
execute as @e[type=!player,tag=Player] run data merge entity @s {Invulnerable:0b}
tag @a remove Complete