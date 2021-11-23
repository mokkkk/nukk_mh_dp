# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/bite/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/bite/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0 ^-0.025
execute if score @s AsaMatrix matches 5 run function asa_animator:dyno/anim/bite/keyframes/1
execute if score @s AsaMatrix matches 5..12 run tp @s ^0 ^0.0125 ^-0.0125
execute if score @s AsaMatrix matches 13 run function asa_animator:dyno/anim/bite/keyframes/2
execute if score @s AsaMatrix matches 13..18 run tp @s ^0 ^-0.01666667 ^0.4666666
execute if score @s AsaMatrix matches 19 run function asa_animator:dyno/anim/bite/keyframes/3
execute if score @s AsaMatrix matches 19..25 run tp @s ^0 ^0 ^0.02857144 ~0.3 ~
execute if score @s AsaMatrix matches 26 run function asa_animator:dyno/anim/bite/keyframes/4
execute if score @s AsaMatrix matches 26..34 run tp @s ^0 ^0 ^-0.03333333 ~-0.3 ~
execute if score @s AsaMatrix matches 35.. run function asa_animator:dyno/anim/bite/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1..8 run function asa_animator:dyno/manager/rotate

execute if score @s AsaMatrix matches 5 run function asa_animator:dyno/manager/particle/jump
execute if score @s AsaMatrix matches 13 run function asa_animator:dyno/manager/particle/jump

execute if score @s AsaMatrix matches 18 positioned ^ ^ ^6 run function asa_animator:dyno/anim/bite/events/damage

execute if score @s AsaMatrix matches 1..12 at @s if entity @e[distance=0..7,tag=DynoAttackTarget] run tp @s ^ ^ ^-0.3