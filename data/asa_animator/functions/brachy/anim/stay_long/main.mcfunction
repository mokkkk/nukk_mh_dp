# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/stay/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/stay/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^-0.01 ^0.02
execute if score @s AsaMatrix matches 6 run function asa_animator:brachy/anim/stay/keyframes/1
execute if score @s AsaMatrix matches 6..15 run tp @s ^0 ^0.015 ^-0.01
execute if score @s AsaMatrix matches 16 run function asa_animator:brachy/anim/stay/keyframes/2
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^-0.04 ^0.02
execute if score @s AsaMatrix matches 21 run function asa_animator:brachy/anim/stay/keyframes/3
execute if score @s AsaMatrix matches 21..35 run tp @s ^0 ^0.003333333 ^0.01
execute if score @s AsaMatrix matches 36 run function asa_animator:brachy/anim/stay/keyframes/4
execute if score @s AsaMatrix matches 36..55 run tp @s ^0 ^0.0025 ^-0.0125
execute if score @s AsaMatrix matches 56.. run function asa_animator:brachy/anim/stay/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute unless predicate asa_animator:brachy/combo if score @s AsaMatrix matches 1 run tag @s add ChangeAnm
execute if score @s AsaMatrix matches 1 if score #mhdp_brachy_actcount AsaMatrix matches 1.. run function asa_animator:brachy/anim/stay/events/change

function asa_animator:brachy/manager/ground