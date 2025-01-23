summon minecraft:minecart 5.50 1.06 3.50 {Passengers: [{id: "minecraft:wither_skeleton", Tags: ["Target"], HandItems: [{count: 1, id: "minecraft:bow"}, {}]}]}
summon minecraft:minecart 5.50 1.06 12.50 {Passengers: [{id: "minecraft:wither_skeleton", Tags: ["Target"], HandItems: [{count: 1, id: "minecraft:bow"}, {}]}]}
setblock 5 1 14 minecraft:repeater[facing=south,powered=true]
setblock 5 1 1 minecraft:repeater[facing=north,powered=true]
