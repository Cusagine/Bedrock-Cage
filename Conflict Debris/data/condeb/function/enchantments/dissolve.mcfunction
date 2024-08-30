# brc advancement
execute if block ~ ~ ~ #brc:rule_block on origin run advancement grant @s only brc:advancements/rule_break
# main
execute unless block ~ ~ ~ #condeb:unbreakable run playsound minecraft:block.grass.break block @a
execute unless block ~ ~ ~ #condeb:unbreakable run setblock ~ ~ ~ air
execute if block ~ ~ ~ #condeb:unbreakable run playsound minecraft:block.stone.hit block @a
kill @s