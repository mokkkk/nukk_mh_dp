# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/dash_stop_fly/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/dash_stop_fly/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.3125 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:teo/anim/dash_stop_fly/keyframes/1
execute if entity @s[scores={AsaMatrix=9..14}] run tp @s ^0 ^0.1666667 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:teo/anim/dash_stop_fly/keyframes/2
execute if entity @s[scores={AsaMatrix=15..22}] run tp @s ^0 ^0.0625 ^0
execute if entity @s[scores={AsaMatrix=23..}] run function asa_animator:teo/anim/dash_stop_fly/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run tag @s add IsFlying

execute if entity @s[tag=IsRight,scores={AsaMatrix=1..22}] at @s run tp @s ^0 ^ ^0 ~9.5 ~
execute if entity @s[tag=!IsRight,scores={AsaMatrix=1..22}] at @s run tp @s ^0 ^ ^0 ~-9.5 ~

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/particle/step