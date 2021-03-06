# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0.04 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/bomb/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.02 ^-0.02 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/bomb/keyframes/2
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^-0.003333334 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:teo/anim/bomb/keyframes/3
execute if entity @s[scores={AsaMatrix=26..50}] run tp @s ^0 ^0.002 ^0.004
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:teo/anim/bomb/keyframes/4
execute if entity @s[scores={AsaMatrix=51..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:teo/anim/bomb/keyframes/5
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:teo/anim/bomb/keyframes/6
execute if entity @s[scores={AsaMatrix=61..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:teo/anim/bomb/keyframes/7
execute if entity @s[scores={AsaMatrix=71..80}] run tp @s ^0 ^0.02 ^-0.02
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:teo/anim/bomb/keyframes/8
execute if entity @s[scores={AsaMatrix=81..95}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=96}] run function asa_animator:teo/anim/bomb/keyframes/9
execute if entity @s[scores={AsaMatrix=96..110}] run tp @s ^0 ^-0.006666667 ^0
execute if entity @s[scores={AsaMatrix=111..}] run function asa_animator:teo/anim/bomb_n/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=96}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=60}] run function asa_animator:teo/manager/bomb/ingite

execute if entity @s[scores={AsaMatrix=10}] run particle dust 1 0.255 0.255 3 ~ ~1 ~ 2 1 2 0 30
execute if entity @s[scores={AsaMatrix=10..60}] run function asa_animator:teo/anim/bomb_n/events/particle
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:teo/anim/voice/events/particle
execute if entity @s[scores={AsaMatrix=10}] run playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=20}] run playsound block.fire.ambient master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=62}] positioned ^4.24264 ^ ^-4.24264 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=65}] positioned ^6 ^ ^0 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=68}] positioned ^-4.24264 ^ ^-4.24264 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=71}] positioned ^0 ^ ^6 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=74}] positioned ^-4.24264 ^ ^4.24264 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=77}] positioned ^0 ^ ^-6 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=80}] positioned ^4.24264 ^ ^4.24264 run function asa_animator:teo/anim/bomb_n/events/damage
execute if entity @s[scores={AsaMatrix=83}] positioned ^-6 ^ ^0 run function asa_animator:teo/anim/bomb_n/events/damage

execute if entity @s[scores={AsaMatrix=75..90}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.9
execute if entity @s[scores={AsaMatrix=75..90}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=75..90}] run playsound entity.polar_bear.warning master @a ~ ~ ~ 3 0.7