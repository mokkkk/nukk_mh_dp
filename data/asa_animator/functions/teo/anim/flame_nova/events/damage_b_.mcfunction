
scoreboard players add #mhdp_teo_temp AsaMatrix 1

execute if score #mhdp_teo_temp AsaMatrix matches ..2 run particle small_flame ^ ^ ^ 0.2 0.2 0.2 0.05 10
execute if score #mhdp_teo_temp AsaMatrix matches 3..5 run particle flame ^ ^ ^ 0.3 0.3 0.3 0.05 20
execute if score #mhdp_teo_temp AsaMatrix matches 6..8 run particle flame ^ ^ ^ 0.5 0.5 0.5 0.05 30
execute if score #mhdp_teo_temp AsaMatrix matches 9.. run particle flame ^ ^ ^ 0.7 0.7 0.7 0.05 30


execute if score #mhdp_teo_temp AsaMatrix matches ..20 positioned ^ ^ ^1 unless block ~ ~ ~ #asa_animator:no_collision run scoreboard players set #mhdp_teo_temp AsaMatrix 21
execute if score #mhdp_teo_temp AsaMatrix matches 21 rotated ~ 0 run function asa_animator:teo/anim/flame_nova/events/particle
execute if score #mhdp_teo_temp AsaMatrix matches ..20 positioned ^ ^ ^1 if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:teo/anim/flame_nova/events/damage_b_