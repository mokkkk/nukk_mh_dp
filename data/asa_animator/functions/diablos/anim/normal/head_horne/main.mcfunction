# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/head_horne/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/head_horne/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0 ^-0.03333334
execute if score @s AsaMatrix matches 7 run function asa_animator:diablos/anim/normal/head_horne/keyframes/1
execute if score @s AsaMatrix matches 7..16 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 17 run function asa_animator:diablos/anim/normal/head_horne/keyframes/2
execute if score @s AsaMatrix matches 17..25 run tp @s ^0 ^0 ^-0.02222222
execute if score @s AsaMatrix matches 26 run function asa_animator:diablos/anim/normal/head_horne/keyframes/3
execute if score @s AsaMatrix matches 26..29 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 30 run function asa_animator:diablos/anim/normal/head_horne/keyframes/4
execute if score @s AsaMatrix matches 35 run function asa_animator:diablos/anim/normal/head_horne/keyframes/5
execute if score @s AsaMatrix matches 35..37 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 38 run function asa_animator:diablos/anim/normal/head_horne/keyframes/6
execute if score @s AsaMatrix matches 38..47 run tp @s ^0 ^-0.01 ^0
execute if score @s AsaMatrix matches 48 run function asa_animator:diablos/anim/normal/head_horne/keyframes/7
execute if score @s AsaMatrix matches 48..54 run tp @s ^0 ^0.04285714 ^0.1428571
execute if score @s AsaMatrix matches 55 run function asa_animator:diablos/anim/normal/head_horne/keyframes/8
execute if score @s AsaMatrix matches 55..58 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 59 run function asa_animator:diablos/anim/normal/head_horne/keyframes/9
execute if score @s AsaMatrix matches 59..70 run tp @s ^0 ^0.04166667 ^0.08333334
execute if score @s AsaMatrix matches 71.. run function asa_animator:diablos/anim/normal/head_horne/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model


execute if score @s AsaMatrix matches 1..29 at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if score @s AsaMatrix matches 1..29 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if score @s AsaMatrix matches 59.. at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if score @s AsaMatrix matches 59.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if score @s AsaMatrix matches 1..29 run function asa_animator:diablos/manager/rotate_fast

execute if score @s AsaMatrix matches 13 positioned as @e[tag=DiablosAttackTarget] rotated ~ 0 run function asa_animator:diablos/anim/normal/head_horne/events/pos/set_pos
execute if score @s AsaMatrix matches 30..34 run function asa_animator:diablos/anim/normal/head_horne/events/pos/offset

execute if score @s AsaMatrix matches 35 run function asa_animator:diablos/anim/normal/head_horne/events/damage_0
execute if score @s AsaMatrix matches 47 run function asa_animator:diablos/anim/normal/head_horne/events/damage_1