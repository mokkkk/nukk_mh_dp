# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/bite/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/bite/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^0 ^0.02857143 ~-0.5 ~
execute if score @s AsaMatrix matches 8 run function asa_animator:reus/anim/bite/keyframes/1
execute if score @s AsaMatrix matches 8..10 run tp @s ^0 ^0 ^0 ~1 ~
execute if score @s AsaMatrix matches 11 run function asa_animator:reus/anim/bite/keyframes/2
execute if score @s AsaMatrix matches 11..17 run tp @s ^0 ^0 ^0.1142857
execute if score @s AsaMatrix matches 18 run function asa_animator:reus/anim/bite/keyframes/3
execute if score @s AsaMatrix matches 18..27 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 28 run function asa_animator:reus/anim/bite/keyframes/4
execute if score @s AsaMatrix matches 28..40 run tp @s ^0 ^0 ^-0.07692308
execute if score @s AsaMatrix matches 41.. run function asa_animator:reus/anim/bite/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model
