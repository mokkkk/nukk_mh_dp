# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_nova/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_nova/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.01428571 ^0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:teo/anim/flame_nova/keyframes/1
execute if entity @s[scores={AsaMatrix=8..15}] run tp @s ^0 ^0.0375 ^-0.1
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:teo/anim/flame_nova/keyframes/2
execute if entity @s[scores={AsaMatrix=16..27}] run tp @s ^0 ^-0.01666667 ^-0.00833333
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:teo/anim/flame_nova/keyframes/3
execute if entity @s[scores={AsaMatrix=28..34}] run tp @s ^0 ^0 ^0.1
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:teo/anim/flame_nova/keyframes/4
execute if entity @s[scores={AsaMatrix=35..64}] run tp @s ^0 ^0 ^-0.003333333
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:teo/anim/flame_nova/keyframes/5
execute if entity @s[scores={AsaMatrix=65..72}] run tp @s ^0 ^0.0125 ^-0.0625
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:teo/anim/flame_nova/keyframes/6
execute if entity @s[scores={AsaMatrix=73..75}] run tp @s ^0 ^0.03333334 ^0
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:teo/anim/flame_nova/keyframes/7
execute if entity @s[scores={AsaMatrix=76..86}] run tp @s ^0 ^-0.03636364 ^-0.02727272 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:teo/anim/flame_nova/keyframes/8
execute if entity @s[scores={AsaMatrix=87..94}] run tp @s ^0 ^0 ^-0.0125 ~0.5 ~
execute if entity @s[scores={AsaMatrix=95}] run function asa_animator:teo/anim/flame_nova/keyframes/9
execute if entity @s[scores={AsaMatrix=95..104}] run tp @s ^0 ^0.03 ^0.01
execute if entity @s[scores={AsaMatrix=105}] run function asa_animator:teo/anim/flame_nova/keyframes/10
execute if entity @s[scores={AsaMatrix=105..116}] run tp @s ^0 ^0 ^0.008333336
execute if entity @s[scores={AsaMatrix=117}] run function asa_animator:teo/anim/flame_nova/keyframes/11
execute if entity @s[scores={AsaMatrix=117..131}] run tp @s ^0 ^-0.006666667 ^0.05333333
execute if entity @s[scores={AsaMatrix=132..}] run function asa_animator:teo/anim/flame_nova/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=117}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=..15}] run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:teo/manager/particle/step

execute if entity @s[scores={AsaMatrix=15}] run summon marker ~ ~ ~ {Tags:["TeoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=15}] at @e[tag=TeoAttackTarget,limit=1] run tp @e[type=marker,tag=TeoMoveRotate] ~ ~ ~
execute if entity @s[scores={AsaMatrix=72}] run kill @e[type=marker,tag=TeoMoveRotate]

execute if entity @s[scores={AsaMatrix=100..110}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.9
execute if entity @s[scores={AsaMatrix=100..110}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=100..110}] run playsound entity.polar_bear.warning master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=34..67}] positioned as @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.2 ^1 facing entity @e[type=marker,tag=TeoMoveRotate,limit=1] feet run function asa_animator:teo/anim/flame_nova/events/damage_f
execute if entity @s[scores={AsaMatrix=68}] positioned as @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.2 ^1 facing entity @e[type=marker,tag=TeoMoveRotate,limit=1] feet run function asa_animator:teo/anim/flame_nova/events/damage_b

execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:teo/manager/font/start
execute if entity @s[scores={AsaMatrix=70}] run function asa_animator:teo/manager/font/end