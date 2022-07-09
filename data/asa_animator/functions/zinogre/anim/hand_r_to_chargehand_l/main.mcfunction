# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.1 ^-0.2
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/1
execute if entity @s[scores={AsaMatrix=6..9}] run tp @s ^0 ^0.0375 ^0.025
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/2
execute if entity @s[scores={AsaMatrix=10..15}] run tp @s ^0 ^0.0125 ^0.025
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/3
execute if entity @s[scores={AsaMatrix=16..24}] run tp @s ^0 ^0.004545454 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/4
execute if entity @s[scores={AsaMatrix=25..35}] run tp @s ^0 ^0.004545456 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/5
execute if entity @s[scores={AsaMatrix=36..38}] run tp @s ^0 ^0.03333333 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/6
execute if entity @s[scores={AsaMatrix=39..40}] run tp @s ^0 ^-0.05 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/7
execute if entity @s[scores={AsaMatrix=41..42}] run tp @s ^0 ^-0.5 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/8
execute if entity @s[scores={AsaMatrix=43..44}] run tp @s ^0 ^0.55 ^0.025
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/9
execute if entity @s[scores={AsaMatrix=45..47}] run tp @s ^0 ^-0.3 ^0.01666667
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/10
execute if entity @s[scores={AsaMatrix=48..56}] run tp @s ^0 ^0 ^0 ~0.2 ~
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/11
execute if entity @s[scores={AsaMatrix=57..68}] run tp @s ^0 ^0.006510417 ^-0.01484375
execute if entity @s[scores={AsaMatrix=69}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/12
execute if entity @s[scores={AsaMatrix=69..76}] run tp @s ^0 ^0.04101563 ^-0.05976562
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/13
execute if entity @s[scores={AsaMatrix=77..82}] run tp @s ^0 ^0.01041667 ^-0.02708334
execute if entity @s[scores={AsaMatrix=83}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/14
execute if entity @s[scores={AsaMatrix=83..86}] run tp @s ^0 ^0.0078125 ^-0.0203125
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/keyframes/15
execute if entity @s[scores={AsaMatrix=87..90}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=91..}] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=15}] run summon lightning_bolt ~ 255 ~
    execute if entity @s[scores={AsaMatrix=6..42}] at @s run function asa_animator:zinogre/anim/chargehand_l/events/particle

# 移動
    execute if entity @s[scores={AsaMatrix=1..32}] run function asa_animator:zinogre/manager/rotate_fast
    execute if entity @s[scores={AsaMatrix=33}] at @s run function asa_animator:zinogre/anim/chargehand_l/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=35..42}] run function asa_animator:zinogre/anim/chargehand_l/events/pos/offset

# 攻撃
    execute if entity @s[scores={AsaMatrix=42}] positioned ^2 ^ ^7 run function asa_animator:zinogre/anim/chargehand_l/events/damage_h
    execute if entity @s[scores={AsaMatrix=52}] positioned ^5 ^ ^12 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t
    execute if entity @s[scores={AsaMatrix=52}] positioned ^-1 ^ ^12 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t
    execute if entity @s[scores={AsaMatrix=57}] positioned ^4 ^ ^18.5 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t
    execute if entity @s[scores={AsaMatrix=57}] positioned ^0 ^ ^18.5 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t
    execute if entity @s[scores={AsaMatrix=57}] positioned ^8 ^ ^17 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t
    execute if entity @s[scores={AsaMatrix=57}] positioned ^-4 ^ ^17 run function asa_animator:zinogre/anim/chargehand_l/events/damage_t

# 高度調整
    execute if entity @s[scores={AsaMatrix=1..32}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=1..32}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=69..}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=69..}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~