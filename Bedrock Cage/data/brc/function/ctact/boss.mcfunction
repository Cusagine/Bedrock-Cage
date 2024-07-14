advancement revoke @s only brc:ctact/boss
execute as @e[nbt={CustomName:'{"translate":"tag.brc.boss","fallback":"Boss"}'}] run tag @s add Boss
execute as @e[nbt={CustomName:'{"translate":"tag.brc.boss","fallback":"Boss"}'}] run tag @s remove Target
execute as @e[tag=Boss] run team join brc_boss @s
execute as @e[tag=Boss] run effect give @s minecraft:glowing 10 0 true