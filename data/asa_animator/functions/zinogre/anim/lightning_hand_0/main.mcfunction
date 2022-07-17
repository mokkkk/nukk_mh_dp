# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/lightning_hand_0/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/3
execute if entity @s[scores={AsaMatrix=14..20}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/4
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/5
execute if entity @s[scores={AsaMatrix=28..40}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/6
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^-0.04 ^-0.04
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/7
execute if entity @s[scores={AsaMatrix=46..48}] run tp @s ^0 ^0.3333333 ^0
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/8
execute if entity @s[scores={AsaMatrix=49..51}] run tp @s ^0 ^2.708333 ^0.01666667
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/9
execute if entity @s[scores={AsaMatrix=52..55}] run tp @s ^0 ^1.78125 ^0.0125
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/10
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0 ^-1.475 ^0.01
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/11
execute if entity @s[scores={AsaMatrix=61..62}] run tp @s ^0 ^-1.84375 ^0.0125
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/12
execute if entity @s[scores={AsaMatrix=63..64}] run tp @s ^0 ^-1.84375 ^0.0125
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/13
execute if entity @s[scores={AsaMatrix=65..67}] run tp @s ^0 ^0.3666667 ^0.01666667 ~0.5 ~
execute if entity @s[scores={AsaMatrix=68}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/14
execute if entity @s[scores={AsaMatrix=68..70}] run tp @s ^0 ^-0.3 ^0.01666667
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:zinogre/anim/lightning_hand_0/keyframes/15
execute if entity @s[scores={AsaMatrix=71..81}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=82..}] run function asa_animator:zinogre/anim/lightning_hand_0/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..40}] run function asa_animator:zinogre/manager/rotate
    execute if entity @s[scores={AsaMatrix=40}] at @s run function asa_animator:zinogre/anim/lightning_hand_0/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=46..64}] run function asa_animator:zinogre/anim/lightning_hand_0/events/pos/offset

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=10}] run summon lightning_bolt ~ 255 ~
    execute if entity @s[scores={AsaMatrix=10}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=13..27}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=1..67}] at @s run function asa_animator:zinogre/anim/chargehand_r/events/particle
    execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=65}] run summon lightning_bolt ~ 255 ~
    execute if entity @s[scores={AsaMatrix=66..75}] run function asa_animator:zinogre/anim/lightning_hand_0/events/particle

# 攻撃
    execute if entity @s[scores={AsaMatrix=65}] positioned ^ ^ ^7 run function asa_animator:zinogre/anim/lightning_hand_0/events/damage_h
    execute if entity @s[scores={AsaMatrix=75}] run function asa_animator:zinogre/anim/lightning_hand_0/events/damage_t_0
    execute if entity @s[scores={AsaMatrix=80}] run function asa_animator:zinogre/anim/lightning_hand_0/events/damage_t_1

# 状態更新
    execute if entity @s[scores={AsaMatrix=46}] run tag @s add IsFlying
    execute if entity @s[scores={AsaMatrix=65}] run tag @s remove IsFlying

# 高度調整
    execute if entity @s[scores={AsaMatrix=1..40}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=1..40}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=71..}] at @s if block ~ ~0.4 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=71..}] at @s unless block ~ ~0.6 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~