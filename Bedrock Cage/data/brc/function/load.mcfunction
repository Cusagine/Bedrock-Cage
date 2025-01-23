# Setup
execute unless data storage brc:core load.set_up if biome ~ ~ ~ brc:bedrock_cage run return run function brc:load/setup
execute unless data storage brc:core load.set_up run data modify storage brc:core load.set_up set value 0b