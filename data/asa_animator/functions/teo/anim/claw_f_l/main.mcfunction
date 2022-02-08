# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/claw_f_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/claw_f_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/claw_f_l/keyframes/1
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/claw_f_l/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^0 ^0.1 ~1 ~
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:teo/anim/claw_f_l/keyframes/3
execute if entity @s[scores={AsaMatrix=14..16}] run tp @s ^0 ^0 ^0.1 ~1 ~
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:teo/anim/claw_f_l/keyframes/4
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:teo/anim/claw_f_l/keyframes/5
execute if entity @s[scores={AsaMatrix=30..38}] run tp @s ^0 ^-0.005555556 ^-0.1 ~-1 ~
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:teo/anim/claw_f_l/keyframes/6
execute if entity @s[scores={AsaMatrix=39..48}] run tp @s ^0 ^-0.005 ^-0.1 ~-0.4 ~
execute if entity @s[scores={AsaMatrix=49..}] run function asa_animator:teo/anim/claw_f_l/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=1..5}] run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=11..16}] unless entity @s[tag=TeoAttackTarget,distance=..7] at @s run tp @s ^ ^ ^0.6

execute if entity @s[scores={AsaMatrix=13}] positioned ^1.5 ^1 ^6 run function asa_animator:teo/anim/claw_f_l/events/damage
# 粉塵纏いlv2-
    execute if entity @s[tag=IsBomb,scores={AsaMatrix=15}] if score #mhdp_teo_lv AsaMatrix matches 2.. positioned ^1.5 ^1 ^9 run function asa_animator:teo/manager/bomb/set_bomb
    execute if entity @s[tag=IsBomb,scores={AsaMatrix=17}] if score #mhdp_teo_lv AsaMatrix matches 2.. positioned ^1.5 ^1 ^12 run function asa_animator:teo/manager/bomb/set_bomb

# コンボキャンセル
    execute unless predicate asa_animator:teo/combo if entity @s[scores={AsaMatrix=30}] run function asa_animator:teo/manager/cancel_animation