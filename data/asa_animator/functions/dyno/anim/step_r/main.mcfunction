# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/step_r/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/step_r/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^-0.06 ^0.02
execute if score @s AsaMatrix matches 6 run function asa_animator:dyno/anim/step_r/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^0.3 ^0
execute if score @s AsaMatrix matches 11 run function asa_animator:dyno/anim/step_r/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^-0.23 ^0
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/anim/step_r/keyframes/3
execute if score @s AsaMatrix matches 16..20 run tp @s ^ ^-0.09 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:dyno/anim/step_r/keyframes/4
execute if score @s AsaMatrix matches 21..27 run tp @s ^-0.1 ^0.05714286 ^-0.01428571
execute if score @s AsaMatrix matches 28.. run function asa_animator:dyno/anim/step_r/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/step_r/events/pos/set_pos
execute if score @s AsaMatrix matches 6 run function asa_animator:dyno/manager/particle/jump
execute if score @s AsaMatrix matches 6..20 run function asa_animator:dyno/anim/step_l/events/pos/offset
execute if score @s AsaMatrix matches 20 run function asa_animator:dyno/manager/particle/jump
execute if score @s AsaMatrix matches 20.. run function asa_animator:dyno/manager/rotate