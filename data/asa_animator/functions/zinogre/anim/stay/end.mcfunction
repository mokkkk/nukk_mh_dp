scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s add ChangeAnm
scoreboard players set #mhdp_zinogre_actcount AsaMatrix 2