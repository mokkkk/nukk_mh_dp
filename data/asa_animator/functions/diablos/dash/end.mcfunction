scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate_reset
scoreboard players add #diablos_dash_count AsaMatrix 1
# 強制停止
execute if score #diablos_dash_count AsaMatrix matches 4.. run function asa_animator:diablos/dash/effect/change