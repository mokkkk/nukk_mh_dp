scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmHeadR2HandLS
tag @s add AnmHandL2R
kill @e[type=marker,tag=ZinogreMoveRotate]