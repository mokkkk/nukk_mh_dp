# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/destroy_head/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/destroy_head/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^0.02857143 ^-0.02857143 ~1 ~
execute if score @s AsaMatrix matches 8 run function asa_animator:zinogre/anim/destroy_head/keyframes/1
execute if score @s AsaMatrix matches 8..13 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 14 run function asa_animator:zinogre/anim/destroy_head/keyframes/2
execute if score @s AsaMatrix matches 14..22 run tp @s ^0 ^-0.02222222 ^-0.08888889
execute if score @s AsaMatrix matches 23 run function asa_animator:zinogre/anim/destroy_head/keyframes/3
execute if score @s AsaMatrix matches 23..38 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 39 run function asa_animator:zinogre/anim/destroy_head/keyframes/4
execute if score @s AsaMatrix matches 39..40 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/destroy_head/keyframes/5
execute if score @s AsaMatrix matches 41..55 run tp @s ^0 ^0 ^0.06666667
execute if score @s AsaMatrix matches 56.. run function asa_animator:zinogre/anim/destroy_head/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model
