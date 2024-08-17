# Setup
execute unless data storage brc:core Load.SetUp if biome ~ ~ ~ brc:bedrock_cage run return run function brc:load/setup
execute unless data storage brc:core Load.SetUp run data modify storage brc:core Load.SetUp set value 0b