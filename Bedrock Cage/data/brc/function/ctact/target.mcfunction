advancement revoke @s only brc:ctact/target
execute as @e[nbt={CustomName:'{"translate":"tag.brc.target","fallback":"Target"}'}] run tag @s add Target
execute as @e[nbt={CustomName:'{"translate":"tag.brc.target","fallback":"Target"}'}] run tag @s remove Boss
execute as @e[tag=Target] run team join brc_target @s
execute as @e[tag=Target] run effect give @s minecraft:glowing 10 0 true