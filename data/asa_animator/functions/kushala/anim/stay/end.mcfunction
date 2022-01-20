scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate_reset
scoreboard players set #mhdp_kushala_actcount AsaMatrix 6
execute if score #mhdp_kushala_lv AsaMatrix matches 1 run scoreboard players add #mhdp_kushala_actcount AsaMatrix 2
execute if score #mhdp_kushala_lv AsaMatrix matches 2 run scoreboard players add #mhdp_kushala_actcount AsaMatrix 4