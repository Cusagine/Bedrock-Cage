data modify storage brc:core load.set_up set value 1b
# Ruler
setworldspawn 0 -16 0
weather thunder
gamerule commandModificationBlockLimit 81920
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule spectatorsGenerateChunks false
gamerule commandBlockOutput false
time set midnight
worldborder set 32
worldborder warning distance 0
# Set Game Area
fill -16 31 -16 15 -16 15 minecraft:air
# Config
data merge storage brc:stage {run:0b,progress:0,step:0,menu:0b,deduction:0b}
function brc:theme/brc
scoreboard objectives add death_trigger deathCount {"translate":"objective.brc.death_trigger","fallback":"Death Trigger"}
scoreboard objectives add quit trigger {"translate":"objective.brc.quit_trigger","fallback":"Quit Trigger"}
# routine start
schedule function brc:routine_1s 1s replace