$data modify storage brxt:data player[{UUID:$(UUID)}].LastDeathLocationX set from entity @s LastDeathLocation.pos[0]
$data modify storage brxt:data player[{UUID:$(UUID)}].LastDeathLocationY set from entity @s LastDeathLocation.pos[1]
$data modify storage brxt:data player[{UUID:$(UUID)}].LastDeathLocationZ set from entity @s LastDeathLocation.pos[2]
$data modify storage brxt:data player[{UUID:$(UUID)}].LastDeathLocationDim set from entity @s LastDeathLocation.dimension
$function condeb:tweaks/compass_back/tp with storage brxt:data player[{UUID:$(UUID)}]