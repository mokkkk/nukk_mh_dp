# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/supernova/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/supernova/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^-0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:teo/anim/supernova/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0.3 ^0.04
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:teo/anim/supernova/keyframes/2
execute if entity @s[scores={AsaMatrix=13..22}] run tp @s ^0 ^0.2 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:teo/anim/supernova/keyframes/3
execute if entity @s[scores={AsaMatrix=23..32}] run tp @s ^0 ^-0.01999998 ^0
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:teo/anim/supernova/keyframes/4
execute if entity @s[scores={AsaMatrix=33..72}] run tp @s ^0 ^0.01499999 ^0
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:teo/anim/supernova/keyframes/5
execute if entity @s[scores={AsaMatrix=73..78}] run tp @s ^0 ^-0.09999994 ^0
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:teo/anim/supernova/keyframes/6
execute if entity @s[scores={AsaMatrix=79..85}] run tp @s ^0 ^0.1571429 ^0.1
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:teo/anim/supernova/keyframes/7
execute if entity @s[scores={AsaMatrix=86..110}] run tp @s ^0 ^-0.016 ^-0.02
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:teo/anim/supernova/keyframes/8
execute if entity @s[scores={AsaMatrix=111..135}] run tp @s ^0 ^-0.02 ^-0.008
execute if entity @s[scores={AsaMatrix=136..}] run function asa_animator:teo/anim/supernova/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open

execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.9
execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..5}] run playsound entity.polar_bear.warning master @a ~ ~ ~ 3 0.5

execute if entity @s[scores={AsaMatrix=32..84}] positioned ^ ^2 ^ run function asa_animator:teo/anim/supernova/events/particle
execute if entity @s[scores={AsaMatrix=15}] run playsound block.portal.trigger master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=85}] positioned ^ ^2 ^ run function asa_animator:teo/anim/supernova/events/damage

execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:teo/manager/lv/reset