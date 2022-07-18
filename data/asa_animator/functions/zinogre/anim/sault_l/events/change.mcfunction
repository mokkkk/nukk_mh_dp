scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmSaultL
tag @s remove AnmSaultR

# 始動：尻尾叩きつけ（前）
    tag @s add AnmBackPress