scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmCHandL
tag @s remove AnmHandR2CHandL
tag @s add AnmHandL2CHandR
tag @s add IsHandC2