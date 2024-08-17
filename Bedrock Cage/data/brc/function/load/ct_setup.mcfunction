data modify storage brc:core Load.CtSetUp set value 1b
# Area Add
fill -16 47 -16 15 32 15 minecraft:air
fill -17 31 -17 16 16 16 minecraft:light_blue_concrete replace minecraft:bedrock
fill -17 15 -17 16 0 16 minecraft:lime_concrete replace minecraft:bedrock
fill -17 -1 -17 16 -16 16 minecraft:brown_concrete replace minecraft:bedrock
fill -15 -17 -15 -16 -17 -16 minecraft:purple_concrete replace minecraft:bedrock
fill -1 -17 -1 0 -17 0 minecraft:orange_concrete replace minecraft:bedrock
fill -16 -18 -16 15 -31 15 minecraft:light[level=15,waterlogged=false] replace minecraft:bedrock
setblock -16 -17 -16 minecraft:structure_block[mode=save]{author:"Bedrock Cage",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:32,sizeY:48,sizeZ:32}
setblock 0 -17 0 minecraft:structure_block[mode=save]{author:"Bedrock Cage",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:16,sizeY:48,sizeZ:16}
tellraw @a {"translate":"message.brc.ct_mode","fallback":"The creator mode has been enabled.","color":"yellow"}
schedule clear brc:game_command/menu
time set noon