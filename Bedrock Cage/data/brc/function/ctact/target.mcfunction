advancement revoke @s only brc:ctact/target
execute as @e[nbt={CustomName:'{"translate":"tag.brc.target","fallback":"Target"}'}] run tag @s add target
execute as @e[tag=target] run effect give @s minecraft:glowing 10 0 true