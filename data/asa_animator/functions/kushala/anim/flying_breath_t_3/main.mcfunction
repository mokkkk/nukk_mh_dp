# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_breath_t_3/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0 ^0.02 ^-0.03
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/2
execute if entity @s[scores={AsaMatrix=16..21}] run tp @s ^0 ^-0.1333333 ^0.05
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/3
execute if entity @s[scores={AsaMatrix=22..31}] run tp @s ^0 ^0.14 ^-0.03 ~3 ~
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/4
execute if entity @s[scores={AsaMatrix=32..37}] run tp @s ^0 ^-0.2333333 ^0.05
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/5
execute if entity @s[scores={AsaMatrix=38..47}] run tp @s ^0 ^0.14 ^-0.03 ~-6 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/6
execute if entity @s[scores={AsaMatrix=48..53}] run tp @s ^0 ^-0.2333333 ^0.05
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/7
execute if entity @s[scores={AsaMatrix=54..63}] run tp @s ^0 ^0.3 ^-0.4 ~0.5 ~
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:kushala/anim/flying_breath_t_3/keyframes/8
execute if entity @s[scores={AsaMatrix=64..77}] run tp @s ^0 ^-0.06428571 ^0.02142857
execute if entity @s[scores={AsaMatrix=78..}] run function asa_animator:kushala/anim/flying_breath_t_3/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:kushala/manager/rotate
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=21}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 発射
execute if entity @s[scores={AsaMatrix=21}] positioned ^ ^2 ^5 run function asa_animator:kushala/anim/bjb_land/events/shot
execute if entity @s[scores={AsaMatrix=37}] positioned ^ ^2 ^5 run function asa_animator:kushala/anim/bjb_land/events/shot
execute if entity @s[scores={AsaMatrix=53}] positioned ^ ^2 ^5 run function asa_animator:kushala/anim/bjb_land/events/shot