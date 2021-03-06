# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_ground/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_ground/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/flame_ground/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.02 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/flame_ground/keyframes/2
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/flame_ground/keyframes/3
execute if entity @s[scores={AsaMatrix=21..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:teo/anim/flame_ground/keyframes/4
execute if entity @s[scores={AsaMatrix=41..48}] run tp @s ^0 ^0.00625 ^0
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:teo/anim/flame_ground/keyframes/5
execute if entity @s[scores={AsaMatrix=49..80}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:teo/anim/flame_ground/keyframes/6
execute if entity @s[scores={AsaMatrix=81..87}] run tp @s ^0 ^-0.007142857 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=88}] run function asa_animator:teo/anim/flame_ground/keyframes/7
execute if entity @s[scores={AsaMatrix=88..102}] run tp @s ^0 ^-0.01333333 ^-0.1 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=103}] run function asa_animator:teo/anim/flame_ground/keyframes/8
execute if entity @s[scores={AsaMatrix=103..110}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:teo/anim/flame_ground/keyframes/9
execute if entity @s[scores={AsaMatrix=111..122}] run tp @s ^0 ^0.01666667 ^0
execute if entity @s[scores={AsaMatrix=123..}] run function asa_animator:teo/anim/flame_ground/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=6}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=48}] positioned ^ ^0.2 ^4 run function asa_animator:teo/anim/flame_ground/events/summon
execute if entity @s[scores={AsaMatrix=58}] positioned ^ ^0.6 ^4 run function asa_animator:teo/anim/flame_ground/events/summon_2
execute if entity @s[scores={AsaMatrix=49..80}] positioned ^ ^ ^4 run function asa_animator:teo/anim/flame_ground/events/particle
# execute if entity @s[scores={AsaMatrix=49..80}] as @e[tag=!TeoParts,predicate=asa_animator:teo/effect,distance=0..15] run function asa_animator:teo/anim/flame_ground/events/damage