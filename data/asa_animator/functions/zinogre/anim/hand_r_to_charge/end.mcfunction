scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmHandR2Charge

scoreboard players add #mhdp_zinogre_charge_count AsaMatrix 1
execute if score #mhdp_zinogre_charge_count AsaMatrix matches 3.. run function asa_animator:zinogre/manager/change_combo/start_te