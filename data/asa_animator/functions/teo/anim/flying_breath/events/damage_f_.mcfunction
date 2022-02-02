
scoreboard players add #mhdp_teo_temp AsaMatrix 1

execute if score #mhdp_teo_temp AsaMatrix matches ..2 run particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 15
execute if score #mhdp_teo_temp AsaMatrix matches 3.. run particle flame ^ ^ ^ 0.5 0.5 0.5 0.05 15

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,tag=!MhdpHit,distance=..3] run tag @s add MhdpHit

execute positioned ^ ^ ^1 unless block ~ ~ ~ #asa_animator:no_collision run scoreboard players set #mhdp_teo_temp AsaMatrix 14
# AEC設置
    execute if entity @s[scores={AsaMatrix=19}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=27}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=35}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=43}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=51}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=59}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=67}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec
    execute if entity @s[scores={AsaMatrix=75}] if score #mhdp_teo_lv AsaMatrix matches 2 if score #mhdp_teo_temp AsaMatrix matches 14 run function asa_animator:teo/manager/particle/set_aec

execute if score #mhdp_teo_temp AsaMatrix matches ..13 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flying_breath/events/damage_f_