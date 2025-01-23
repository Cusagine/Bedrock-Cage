# block 杀人方块的方块ID或标签ID
# 单行命令，你可以直接放命令方块里
$execute as @e[x=-17,y=-17,z=-17,dx=33,dy=49,dz=33,tag=player] at @s if block ~ ~-0.5 ~ $(block) run kill @s