# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/turn/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/turn/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0.015 ^-0.02
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/turn/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^-0.025 ^0.04
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/turn/keyframes/2
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:teo/anim/turn/keyframes/3
execute if entity @s[scores={AsaMatrix=25..32}] run tp @s ^0 ^0.0125 ^-0.025
execute if entity @s[scores={AsaMatrix=33..}] run function asa_animator:teo/anim/turn/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/manager/particle/step