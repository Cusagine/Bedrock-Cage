effect give @s minecraft:nausea 8 2 true
effect give @s minecraft:slowness 8 2 true
effect give @s minecraft:blindness 8 2 true
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:160}