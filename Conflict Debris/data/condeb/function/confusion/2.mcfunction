effect give @s minecraft:nausea 6 1 true
effect give @s minecraft:slowness 6 1 true
effect give @s minecraft:blindness 6 1 true
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:120}