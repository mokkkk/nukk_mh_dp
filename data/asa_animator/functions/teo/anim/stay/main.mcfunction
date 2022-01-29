# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=6..25}] run tp @s ^0 ^0.005 ^0.01 ~-0.12 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:teo/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=26..45}] run tp @s ^0 ^0 ^-0.02
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:teo/anim/stay/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~