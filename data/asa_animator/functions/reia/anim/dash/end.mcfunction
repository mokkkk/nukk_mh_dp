scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate_reset
scoreboard players add #mhdp_reia_dash_count AsaMatrix 1
# 強制停止
execute if score #mhdp_reia_dash_count AsaMatrix matches 2.. run function asa_animator:reia/anim/dash/events/change