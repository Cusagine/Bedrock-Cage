effect give @s minecraft:nausea 12 4
effect give @s minecraft:slowness 12 4
effect give @s minecraft:blindness 12 4
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:240}