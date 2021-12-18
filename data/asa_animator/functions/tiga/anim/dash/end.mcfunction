scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate_reset
scoreboard players remove #mhdp_tiga_dash_count AsaMatrix 1
execute if score #mhdp_tiga_dash_count AsaMatrix matches ..0 run function asa_animator:tiga/anim/dash/events/change