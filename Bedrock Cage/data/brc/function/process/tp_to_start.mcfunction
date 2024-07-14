execute as @e[limit=1,sort=random,tag=Start] run tag @s add SelectedStart
execute at @e[tag=SelectedStart] run tp @e[tag=Player] ~ ~ ~
execute as @a[tag=Player] at @s run spawnpoint