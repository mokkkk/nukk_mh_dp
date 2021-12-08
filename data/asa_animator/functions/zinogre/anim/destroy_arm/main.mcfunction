# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/destroy_arm/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/destroy_arm/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0.01666667 ^-0.01666667 ~1 ~
execute if score @s AsaMatrix matches 7 run function asa_animator:zinogre/anim/destroy_arm/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^0 ^-0.01666667 ^-0.01666667
execute if score @s AsaMatrix matches 13 run function asa_animator:zinogre/anim/destroy_arm/keyframes/2
execute if score @s AsaMatrix matches 13..25 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 26 run function asa_animator:zinogre/anim/destroy_arm/keyframes/3
execute if score @s AsaMatrix matches 26..32 run tp @s ^-0.007142857 ^0 ^0
execute if score @s AsaMatrix matches 33 run function asa_animator:zinogre/anim/destroy_arm/keyframes/4
execute if score @s AsaMatrix matches 33..40 run tp @s ^-0.00625 ^0 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/destroy_arm/keyframes/5
execute if score @s AsaMatrix matches 41..55 run tp @s ^0.006666667 ^0 ^0.01333333
execute if score @s AsaMatrix matches 56.. run function asa_animator:zinogre/anim/destroy_arm/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if score @s AsaMatrix matches 1 at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if score @s AsaMatrix matches 1 at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground