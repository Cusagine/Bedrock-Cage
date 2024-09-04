setblock 5 0 12 minecraft:dirt
gamemode survival @a[tag=Player]
setblock 4 12 4 minecraft:carved_pumpkin
setblock 9 9 3 minecraft:carved_pumpkin
setblock 8 8 8 minecraft:carved_pumpkin
setblock 2 17 12 minecraft:carved_pumpkin
setblock 7 9 14 minecraft:carved_pumpkin
execute as @e[type=minecraft:iron_golem] run data merge entity @s {PlayerCreated:false}
setblock 7 4 13 minecraft:soul_lantern
setblock 4 5 12 minecraft:soul_lantern
setblock 8 4 9 minecraft:soul_lantern
setblock 12 5 14 minecraft:soul_lantern
setblock 12 5 9 minecraft:soul_lantern
setblock 12 5 4 minecraft:soul_lantern
fill 15 1 0 0 1 15 soul_sand replace minecraft:dirt_path
execute at @e[type=villager] run summon witch ~ ~ ~ {Tags:["Target"]}
tp @e[type=villager] ~ -100 ~
execute at @e[type=witch] run playsound minecraft:entity.witch.ambient hostile @a
summon witch 4.00 3.62 7.73 {Tags:["Target"]}
summon witch 4.56 3.62 15.06 {Tags:["Target"]}
tag @e[type=minecraft:iron_golem] add Target
team join brc_target @e[tag=Target]
execute as @e[tag=Player] at @s run summon minecraft:ominous_item_spawner ~ ~2 ~ {item:{id:"minecraft:splash_potion",components:{potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:3,duration:800},{id:"minecraft:weakness",amplifier:1,duration:800},{id:"minecraft:mining_fatigue",amplifier:3,duration:800},{id:"minecraft:blindness",amplifier:0,duration:100}]}}}}
schedule function brc:map/brc/bedrock_harbour/golem_run 2s
# map info change
function brc:map/brc/_alter_map/dandelions_flutter_with_wind
title @a title "蒲公英随风飘扬"
title @a subtitle "但蒲公英需要生存。"