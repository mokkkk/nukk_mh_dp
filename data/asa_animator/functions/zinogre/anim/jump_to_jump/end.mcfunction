scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmJump2Jump
kill @e[type=marker,tag=ZinogreMoveRotate]