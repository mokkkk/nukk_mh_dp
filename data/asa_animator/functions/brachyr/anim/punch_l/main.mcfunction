# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/punch_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/punch_l/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^0.02857143 ^-0.07142857
execute if score @s AsaMatrix matches 8 run function asa_animator:brachyr/anim/punch_l/keyframes/1
execute if score @s AsaMatrix matches 8..14 run tp @s ^0 ^0.01428572 ^-0.01428572
execute if score @s AsaMatrix matches 15 run function asa_animator:brachyr/anim/punch_l/keyframes/2
execute if score @s AsaMatrix matches 15..18 run tp @s ^0 ^0 ^-0.03749999
execute if score @s AsaMatrix matches 19 run function asa_animator:brachyr/anim/punch_l/keyframes/3
execute if score @s AsaMatrix matches 19..24 run tp @s ^0 ^-0.1 ^0.125
execute if score @s AsaMatrix matches 25 run function asa_animator:brachyr/anim/punch_l/keyframes/4
execute if score @s AsaMatrix matches 25..28 run tp @s ^0 ^-0.02499999 ^0.05
execute if score @s AsaMatrix matches 29 run function asa_animator:brachyr/anim/punch_l/keyframes/5
execute if score @s AsaMatrix matches 29..44 run tp @s ^0 ^0.01875 ^-0.0125
execute if score @s AsaMatrix matches 45 run function asa_animator:brachyr/anim/punch_l/keyframes/6
execute if score @s AsaMatrix matches 45..58 run tp @s ^0 ^0.007142857 ^-0.03571429
execute if score @s AsaMatrix matches 59.. run function asa_animator:brachyr/anim/punch_l/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 1..9 run function asa_animator:brachyr/manager/rotate
execute if score @s AsaMatrix matches 1..14 if entity @e[distance=0..5,tag=BrachyAttackTarget] at @s run tp @s ^ ^ ^-0.5
execute if score @s AsaMatrix matches 18..24 unless entity @e[distance=0..4,tag=BrachyAttackTarget] at @s run tp @s ^ ^ ^1

execute if score @s AsaMatrix matches 25 positioned ^ ^ ^3 run function asa_animator:brachyr/anim/punch_l/events/damage
execute unless predicate asa_animator:brachyr/combo if score @s AsaMatrix matches 34 run function asa_animator:brachyr/manager/cancel_animation

execute if score @s AsaMatrix matches 44.. run function asa_animator:brachyr/manager/ground