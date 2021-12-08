# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/destroy_head/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/destroy_head/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0.0375 ^-0.2 ~1 ~
execute if score @s AsaMatrix matches 9 run function asa_animator:dyno/anim/destroy_head/keyframes/1
execute if score @s AsaMatrix matches 9..15 run tp @s ^0 ^-0.04285714 ^0.01428571
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/anim/destroy_head/keyframes/2
execute if score @s AsaMatrix matches 16..25 run tp @s ^0 ^-0.03 ^-0.03
execute if score @s AsaMatrix matches 26 run function asa_animator:dyno/anim/destroy_head/keyframes/3
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 31 run function asa_animator:dyno/anim/destroy_head/keyframes/4
execute if score @s AsaMatrix matches 31..42 run tp @s ^0 ^0.0125 ^0.0125
execute if score @s AsaMatrix matches 43 run function asa_animator:dyno/anim/destroy_head/keyframes/5
execute if score @s AsaMatrix matches 43..55 run tp @s ^0 ^0.01153846 ^0.01153846
execute if score @s AsaMatrix matches 56.. run function asa_animator:dyno/anim/destroy_head/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/manager/particle/jump