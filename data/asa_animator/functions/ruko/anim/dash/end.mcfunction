scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
scoreboard players remove #mhdp_ruko_dash_count AsaMatrix 1
execute if score #mhdp_ruko_dash_count AsaMatrix matches ..0 run function asa_animator:ruko/anim/dash/events/change