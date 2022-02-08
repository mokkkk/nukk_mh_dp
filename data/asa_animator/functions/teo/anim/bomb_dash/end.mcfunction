scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate_reset
scoreboard players remove #mhdp_teo_dash_count AsaMatrix 1
execute if score #mhdp_teo_dash_count AsaMatrix matches ..0 run function asa_animator:teo/anim/bomb_dash/events/change