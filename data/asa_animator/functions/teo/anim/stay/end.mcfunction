scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
scoreboard players set #mhdp_teo_actcount AsaMatrix 4
execute if score #mhdp_teo_lv AsaMatrix matches 1 run scoreboard players add #mhdp_teo_actcount AsaMatrix 2
execute if score #mhdp_teo_lv AsaMatrix matches 2 run scoreboard players add #mhdp_teo_actcount AsaMatrix 2