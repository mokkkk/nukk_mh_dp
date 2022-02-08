# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/bite/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/bite/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^-0.06666667 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:teo/anim/bite/keyframes/3
execute if entity @s[scores={AsaMatrix=14..17}] run tp @s ^0 ^0 ^0.05
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:teo/anim/bite/keyframes/4
execute if entity @s[scores={AsaMatrix=18..30}] run tp @s ^0 ^0 ^0.03076923 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:teo/anim/bite/keyframes/5
execute if entity @s[scores={AsaMatrix=31..46}] run tp @s ^0 ^0 ^-0.0375 ~0.5 ~
execute if entity @s[scores={AsaMatrix=47..}] run function asa_animator:teo/anim/bite/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..5}] run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=11..17}] at @s run tp @s ^ ^ ^0.4
execute if entity @s[scores={AsaMatrix=13}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:teo/manager/particle/step

execute if entity @s[scores={AsaMatrix=17}] positioned ^ ^ ^5 run function asa_animator:teo/anim/bite_turn_l/events/damage

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 炎纏いlv1-
    execute if entity @s[tag=IsFire,scores={AsaMatrix=17..19}] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle flame ^ ^1.5 ^4 0.5 0.5 0.5 0.05 30
# コンボキャンセル
    execute unless predicate asa_animator:teo/combo if entity @s[scores={AsaMatrix=24}] run function asa_animator:teo/manager/cancel_animation