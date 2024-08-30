$effect give @s minecraft:nausea $(time) $(amplifier) true
$effect give @s minecraft:slowness $(time) $(amplifier) true
$effect give @s minecraft:blindness $(time) $(amplifier) true
execute if entity @s[type=minecraft:ravager] run playsound entity.ravager.stunned hostile @a
$execute if entity @s[type=minecraft:ravager] run data merge entity @s {StunTick:$(stun_tick)}