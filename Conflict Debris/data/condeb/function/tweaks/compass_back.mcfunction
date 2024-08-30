advancement revoke @s only condeb:tweaks/compass_back
#检测条件
execute unless data entity @s LastDeathLocation run return fail
# 主命令
function condeb:tweaks/compass_back/run with entity @s {}
execute at @s run playsound minecraft:entity.player.teleport player @a
execute if entity @s[gamemode=creative] run return 1
execute if items entity @s weapon.mainhand minecraft:recovery_compass[enchantments~[{enchantments:"minecraft:vanishing_curse"}]] run function condeb:tweaks/compass_back/vanish_consume
execute if items entity @s weapon.mainhand minecraft:recovery_compass[!enchantments~[{enchantments:"minecraft:vanishing_curse"}]] run function condeb:tweaks/compass_back/normal_consume
damage @s 10 magic
return 1