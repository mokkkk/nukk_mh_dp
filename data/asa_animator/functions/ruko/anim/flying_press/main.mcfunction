# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/flying_press/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/flying_press/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.3125 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:ruko/anim/flying_press/keyframes/1
execute if entity @s[scores={AsaMatrix=9..18}] run tp @s ^0 ^0.17 ^-0.01
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:ruko/anim/flying_press/keyframes/2
execute if entity @s[scores={AsaMatrix=19..25}] run tp @s ^0 ^-0.3142857 ^0.01428571
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:ruko/anim/flying_press/keyframes/3
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^-0.3 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:ruko/anim/flying_press/keyframes/4
execute if entity @s[scores={AsaMatrix=36..43}] run tp @s ^0 ^-0.1875 ^0
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:ruko/anim/flying_press/keyframes/5
execute if entity @s[scores={AsaMatrix=44..50}] run tp @s ^0 ^0.6285715 ^0.02857143
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:ruko/anim/flying_press/keyframes/6
execute if entity @s[scores={AsaMatrix=51..58}] run tp @s ^0 ^0.35 ^0
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:ruko/anim/flying_press/keyframes/7
execute if entity @s[scores={AsaMatrix=59..63}] run tp @s ^0 ^ ^-0.04
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:ruko/anim/flying_press/keyframes/8
execute if entity @s[scores={AsaMatrix=64..78}] run tp @s ^0 ^-0.015 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:ruko/anim/flying_press/keyframes/9
execute if entity @s[scores={AsaMatrix=79..98}] run tp @s ^0 ^0.005 ^0.015 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=99..}] run function asa_animator:ruko/anim/flying_press/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=43}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=1..16}] at @s run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=17}] at @s run function asa_animator:ruko/anim/flying_press/events/pos/set_pos_0
execute if entity @s[scores={AsaMatrix=18..43}] at @s run function asa_animator:ruko/anim/flying_press/events/pos/offset_0
execute if entity @s[scores={AsaMatrix=18..32}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=18..32}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=18..32}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=18..32}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6

execute if entity @s[scores={AsaMatrix=44..57}] at @s run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=44..55}] at @s run tp @s ^ ^ ^0.3

execute if entity @s[scores={AsaMatrix=58}] at @s run function asa_animator:ruko/anim/flying_press/events/pos/set_pos_1
execute if entity @s[scores={AsaMatrix=59..63}] run function asa_animator:ruko/anim/flying_press/events/pos/offset_1

execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:ruko/anim/flying_press/events/damage

execute if entity @s[scores={AsaMatrix=64}] run tag @s remove IsFlying