# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/destroy_head/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/destroy_head/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0.01666667 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:diablos/anim/destroy_head/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^-0.01666667 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:diablos/anim/destroy_head/keyframes/2
execute if entity @s[scores={AsaMatrix=13..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/destroy_head/keyframes/3
execute if entity @s[scores={AsaMatrix=16..23}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:diablos/anim/destroy_head/keyframes/4
execute if entity @s[scores={AsaMatrix=24..31}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:diablos/anim/destroy_head/keyframes/5
execute if entity @s[scores={AsaMatrix=32..42}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:diablos/anim/destroy_head/keyframes/6
execute if entity @s[scores={AsaMatrix=43..55}] run tp @s ^0 ^0.01538462 ^0
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:diablos/anim/destroy_head/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=1..6}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=1..6}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~