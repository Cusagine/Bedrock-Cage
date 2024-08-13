data modify storage brc:core Load.SetUp set value 1b
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
# Set Game Area
fill -16 31 -16 15 -16 15 minecraft:air
# Config
function brc:theme/brc
bossbar add brc:boss ""
team add brc_target {"translate":"tag.brc.target","fallback":"Target"}
team modify brc_target color red
team add brc_boss {"translate":"tag.brc.boss","fallback":"Boss"}
team modify brc_boss color light_purple
scoreboard objectives add death_trigger deathCount {"translate":"objective.brc.death_trigger","fallback":"Death Trigger"}
scoreboard objectives add Quit trigger {"translate":"objective.brc.quit_trigger","fallback":"Quit Trigger"}
scoreboard objectives add random dummy {"translate":"objective.brc.random","fallback":"Randomizer"}