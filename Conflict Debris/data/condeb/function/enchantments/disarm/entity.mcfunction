execute unless data entity @s HandItems[0].id run return fail
summon item ~ ~ ~ {PickupDelay:60,Item:{id:"stick",count:1},Tags:["condeb.disarm"]}
data modify entity @n[type=item,tag=condeb.disarm] Item set from entity @s HandItems[0]
data modify entity @n[type=item,tag=condeb.disarm] Thrower set from entity @s UUID
tag @n[type=item,tag=condeb.disarm] remove condeb.disarm
item replace entity @s weapon.mainhand with air
playsound entity.item.break hostile @a