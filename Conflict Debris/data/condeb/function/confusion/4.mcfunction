effect give @s minecraft:nausea 10 3 true
effect give @s minecraft:slowness 10 3 true
effect give @s minecraft:blindness 10 3 true
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:200}