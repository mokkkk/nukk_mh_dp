# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/destroy_head/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/destroy_head/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0 ^-0.04
execute if score @s AsaMatrix matches 6 run function asa_animator:reus/anim/destroy_head/keyframes/1
execute if score @s AsaMatrix matches 6..20 run tp @s ^0 ^0 ^0.01333333
execute if score @s AsaMatrix matches 21 run function asa_animator:reus/anim/destroy_head/keyframes/2
execute if score @s AsaMatrix matches 21..30 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 31 run function asa_animator:reus/anim/destroy_head/keyframes/3
execute if score @s AsaMatrix matches 31..40 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:reus/anim/destroy_head/keyframes/4
execute if score @s AsaMatrix matches 41..55 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 56.. run function asa_animator:reus/anim/destroy_head/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model
