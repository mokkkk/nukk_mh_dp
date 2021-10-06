# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/damage/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/damage/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0.375 ^-0.175 ^0
execute if score @s AsaMatrix matches 9 run function asa_animator:zinogre/anim/damage/keyframes/1
execute if score @s AsaMatrix matches 9..13 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 14 run function asa_animator:zinogre/anim/damage/keyframes/2
execute if score @s AsaMatrix matches 14..18 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 19 run function asa_animator:zinogre/anim/damage/keyframes/3
execute if score @s AsaMatrix matches 19..28 run tp @s ^-0.04000001 ^0 ^0
execute if score @s AsaMatrix matches 29 run function asa_animator:zinogre/anim/damage/keyframes/4
execute if score @s AsaMatrix matches 29..32 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 33 run function asa_animator:zinogre/anim/damage/keyframes/5
execute if score @s AsaMatrix matches 33..43 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 44 run function asa_animator:zinogre/anim/damage/keyframes/6
execute if score @s AsaMatrix matches 44..47 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 48 run function asa_animator:zinogre/anim/damage/keyframes/7
execute if score @s AsaMatrix matches 48..55 run tp @s ^-0.3875 ^0.125 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:zinogre/anim/damage/keyframes/8
execute if score @s AsaMatrix matches 56..60 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:zinogre/anim/damage/keyframes/9
execute if score @s AsaMatrix matches 61..70 run tp @s ^0.05 ^0.01 ^0
execute if score @s AsaMatrix matches 71.. run function asa_animator:zinogre/anim/damage/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches 1..8 run particle minecraft:sneeze ~ ~2 ~ 1 1 1 0.4 30
execute if score @s AsaMatrix matches 1 run playsound entity.item.break master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 1 run tag @s remove IsThunder
execute if score @s AsaMatrix matches 1 as @e[tag=ZinogreParts] run function asa_animator:zinogre/manager/model/change_to_normal

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
execute at @s unless block ~ ~0.7 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~