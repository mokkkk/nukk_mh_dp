# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/turn_jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/turn_jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0.015 ^-0.02
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/turn_jump/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^-0.025 ^-0.01
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/turn_jump/keyframes/2
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0 ^-0.01
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:teo/anim/turn_jump/keyframes/3
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0.8714285 ^0.05714286
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:teo/anim/turn_jump/keyframes/4
execute if entity @s[scores={AsaMatrix=38..44}] run tp @s ^0 ^-0.3571429 ^0
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:teo/anim/turn_jump/keyframes/5
execute if entity @s[scores={AsaMatrix=45..50}] run tp @s ^0 ^-0.6666667 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:teo/anim/turn_jump/keyframes/6
execute if entity @s[scores={AsaMatrix=51..58}] run tp @s ^0 ^0.0125 ^0.125 ~-1 ~
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:teo/anim/turn_jump/keyframes/7
execute if entity @s[scores={AsaMatrix=59..70}] run tp @s ^0 ^0.01666667 ^0.04166667 ~0.5 ~
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:teo/anim/turn_jump/keyframes/8
execute if entity @s[scores={AsaMatrix=71..85}] run tp @s ^0 ^0.01333333 ^-0.1 ~0.5 ~
execute if entity @s[scores={AsaMatrix=86..}] run function asa_animator:teo/anim/turn_jump/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:teo/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=20}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=37}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..29}] at @s run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=30}] at @s run function asa_animator:teo/anim/jump/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=31..50}] run function asa_animator:teo/anim/jump/events/pos/offset

execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=50..58}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:teo/anim/jump/events/particle

execute if entity @s[scores={AsaMatrix=46..53}] positioned ^ ^2 ^4 run function asa_animator:teo/anim/jump/events/damage

# 粉塵纏い：爆発
# execute if entity @s[scores={AsaMatrix=51}] positioned ^ ^2 ^ run function asa_animator:teo/anim/jump/events/damage_b
# execute if entity @s[scores={AsaMatrix=52}] positioned ^ ^2 ^2 run function asa_animator:teo/anim/jump/events/damage_b
# execute if entity @s[scores={AsaMatrix=53}] positioned ^ ^2 ^4 run function asa_animator:teo/anim/jump/events/damage_b