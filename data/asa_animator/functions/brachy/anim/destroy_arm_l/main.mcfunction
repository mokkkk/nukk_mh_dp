# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/destroy_arm_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^-0.6 ^0.04 ^-0.02 ~-1 ~
execute if score @s AsaMatrix matches 6 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/1
execute if score @s AsaMatrix matches 6..14 run tp @s ^-0.1 ^-0.05555556 ^-0.02222222 ~-1 ~
execute if score @s AsaMatrix matches 15 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/2
execute if score @s AsaMatrix matches 15..23 run tp @s ^-0.05 ^0 ^0
execute if score @s AsaMatrix matches 24 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/3
execute if score @s AsaMatrix matches 24..28 run tp @s ^0 ^0 ^0 ~-1 ~
execute if score @s AsaMatrix matches 29 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/4
execute if score @s AsaMatrix matches 29..42 run tp @s ^0.05714286 ^0.01071429 ^0.01071429 ~1 ~
execute if score @s AsaMatrix matches 43 run function asa_animator:brachy/anim/destroy_arm_l/keyframes/5
execute if score @s AsaMatrix matches 43..55 run tp @s ^0.01538462 ^0.01153846 ^0.01153846
execute if score @s AsaMatrix matches 56.. run function asa_animator:brachy/anim/destroy_arm_l/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if score @s AsaMatrix matches 15.. at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if score @s AsaMatrix matches 15.. at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if score @s AsaMatrix matches 15 run function asa_animator:dyno/manager/particle/jump