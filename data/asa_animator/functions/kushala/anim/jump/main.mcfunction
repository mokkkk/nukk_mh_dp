# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.01 ^-0.03
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/jump/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0 ^-0.01
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:kushala/anim/jump/keyframes/2
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0 ^0.8714285 ^0.05714286
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:kushala/anim/jump/keyframes/3
execute if entity @s[scores={AsaMatrix=28..34}] run tp @s ^0 ^-0.3571429 ^0
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:kushala/anim/jump/keyframes/4
execute if entity @s[scores={AsaMatrix=35..40}] run tp @s ^0 ^-0.6666667 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:kushala/anim/jump/keyframes/5
execute if entity @s[scores={AsaMatrix=41..48}] run tp @s ^0 ^0.0125 ^0.125 ~-1 ~
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:kushala/anim/jump/keyframes/6
execute if entity @s[scores={AsaMatrix=49..60}] run tp @s ^0 ^0.008333333 ^0.04166667 ~0.5 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:kushala/anim/jump/keyframes/7
execute if entity @s[scores={AsaMatrix=61..75}] run tp @s ^0 ^0.02 ^-0.03333334 ~0.5 ~
execute if entity @s[scores={AsaMatrix=76..}] run function asa_animator:kushala/anim/jump/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:kushala/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=27}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..19}] run function asa_animator:kushala/manager/rotate
execute if entity @s[scores={AsaMatrix=20}] at @s run function asa_animator:kushala/anim/jump/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=21..40}] run function asa_animator:kushala/anim/jump/events/pos/offset

execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=40..48}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:kushala/anim/jump/events/particle

execute if entity @s[scores={AsaMatrix=36..43}] positioned ^ ^2 ^4 run function asa_animator:kushala/anim/jump/events/damage

# 風圧
execute if entity @s[scores={AsaMatrix=20}] as @a[distance=..5] run function mh_dp:player/knockback/start_dwind
