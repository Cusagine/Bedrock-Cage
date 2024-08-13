# 会在加载地图时运行的函数。
setblock 2 2 -5 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"execute as @e[tag=Player] at @s if block ~ ~-0.5 ~ minecraft:redstone_block run kill @s",SuccessCount:0,TrackOutput:0b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}
setblock 6 3 -16 minecraft:repeating_command_block[conditional=false,facing=north]{Command:"effect give @a minecraft:saturation 3 9 true",SuccessCount:0,TrackOutput:0b,UpdateLastExecution:0b,auto:0b,conditionMet:1b,powered:0b}
setblock 5 2 -16 minecraft:repeating_command_block[conditional=false,facing=north]{Command:"effect give @a minecraft:resistance 3 9 true",SuccessCount:0,TrackOutput:0b,UpdateLastExecution:0b,auto:0b,conditionMet:1b,powered:0b}
setblock 7 2 -16 minecraft:repeating_command_block[conditional=false,facing=north]{Command:"effect give @a minecraft:regeneration 3 9 true",SuccessCount:0,TrackOutput:0b,UpdateLastExecution:0b,auto:0b,conditionMet:1b,powered:0b}
setblock 3 2 -5 minecraft:oak_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"red",has_glowing_text:1b,messages:['{"fallback":"Killer Block:","translate":"rule.brc.killing_block"}','{"translate":"block.minecraft.redstone_block"}','""','""']},is_waxed:1b}
clear @a
xp set @a 0 levels
xp set @a 0 points
effect clear @a