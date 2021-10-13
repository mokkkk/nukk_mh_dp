# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/walk/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/walk/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^-0.025 ^ ~-2 ~
execute if score @s AsaMatrix matches 5 run function asa_animator:diablos/anim/anger/walk/keyframes/1
execute if score @s AsaMatrix matches 5..9 run tp @s ^0 ^-0.04 ^ ~-2 ~
execute if score @s AsaMatrix matches 10 run function asa_animator:diablos/anim/anger/walk/keyframes/2
execute if score @s AsaMatrix matches 10..14 run tp @s ^0 ^0.04 ^ ~-2 ~
execute if score @s AsaMatrix matches 15 run function asa_animator:diablos/anim/anger/walk/keyframes/3
execute if score @s AsaMatrix matches 15..20 run tp @s ^0 ^-0.03333334 ^ ~-2 ~
execute if score @s AsaMatrix matches 21 run function asa_animator:diablos/anim/anger/walk/keyframes/4
execute if score @s AsaMatrix matches 21..25 run tp @s ^0 ^0.04 ^ ~-2 ~
execute if score @s AsaMatrix matches 26 run function asa_animator:diablos/anim/anger/walk/keyframes/5
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^-0.02 ^ ~-2 ~
execute if score @s AsaMatrix matches 31.. run function asa_animator:diablos/anim/normal/walk/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if score @s AsaMatrix matches 9 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if score @s AsaMatrix matches 20 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if score @s AsaMatrix matches 30 run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7

execute if score @s AsaMatrix matches 1..30 at @s if block ^ ^0.5 ^0.5 #asa_animator:no_collision run tp @s ^ ^ ^0.5