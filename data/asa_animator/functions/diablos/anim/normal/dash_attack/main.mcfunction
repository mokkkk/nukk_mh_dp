# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_attack/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0 ^0.4
execute if score @s AsaMatrix matches 6 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^0 ^0.2
execute if score @s AsaMatrix matches 11 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/2
execute if score @s AsaMatrix matches 11..17 run tp @s ^0 ^0 ^0.02857144
execute if score @s AsaMatrix matches 18 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/3
execute if score @s AsaMatrix matches 18..22 run tp @s ^0 ^0 ^-0.04000001
execute if score @s AsaMatrix matches 23 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/4
execute if score @s AsaMatrix matches 23..35 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/5
execute if score @s AsaMatrix matches 36..45 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:diablos/anim/normal/dash_attack/keyframes/6
execute if score @s AsaMatrix matches 46..55 run tp @s ^0 ^0.03 ^-0.05
execute if score @s AsaMatrix matches 56.. run function asa_animator:diablos/anim/normal/dash_attack/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 攻撃
execute if score @s AsaMatrix matches 1..10 if entity @e[type=!armor_stand,type=!marker,distance=0..5] run function asa_animator:diablos/anim/normal/dash/events/damage

execute if score @s AsaMatrix matches 18 run function asa_animator:diablos/anim/normal/dash_attack/events/damage