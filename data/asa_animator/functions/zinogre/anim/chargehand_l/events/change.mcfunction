scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmCHandL

# 始動：バックステップ
execute if entity @s[tag=StartAnmBStep] run tag @s add AnmBackPress