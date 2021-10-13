scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
scoreboard players add #mhdp_diablos_dash_count AsaMatrix 1
# 強制停止
execute if score #mhdp_diablos_dash_count AsaMatrix matches 3.. run function asa_animator:diablos/anim/normal/dash/events/change