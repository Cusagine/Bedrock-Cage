effect give @s minecraft:nausea 4 0
effect give @s minecraft:slowness 4 0
effect give @s minecraft:blindness 4 0
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:80}