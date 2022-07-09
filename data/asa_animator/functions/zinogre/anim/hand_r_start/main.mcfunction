# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_r_start/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/0
execute if entity @s[scores={AsaMatrix=1}] facing entity @e[tag=ZinogreAttackTarget,sort=nearest,limit=1] feet run tp @s ^0 ^0 ^-0.0125 ~ 0
execute if entity @s[scores={AsaMatrix=2..8}] run tp @s ^0 ^0 ^ ~-36 ~
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/1
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0 ^ ~-24 ~
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/2
execute if entity @s[scores={AsaMatrix=13..17}] run tp @s ^0 ^0 ^ ~-1 ~
execute if entity @s[scores={AsaMatrix=18..25}] run tp @s ^0 ^0 ^ ~-0.2 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/4
execute if entity @s[scores={AsaMatrix=31..33}] run tp @s ^0 ^0.1666667 ^0.06666667
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/5
execute if entity @s[scores={AsaMatrix=34..36}] run tp @s ^0 ^0.03333334 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/6
execute if entity @s[scores={AsaMatrix=37..40}] run tp @s ^0 ^0.07499999 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/7
execute if entity @s[scores={AsaMatrix=41..42}] run tp @s ^0 ^-0.8 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/8
execute if entity @s[scores={AsaMatrix=43..44}] run tp @s ^0 ^0.55 ^0.025
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/9
execute if entity @s[scores={AsaMatrix=45..47}] run tp @s ^0 ^-0.3 ^0.01666667
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:zinogre/anim/hand_r_start/keyframes/10
execute if entity @s[scores={AsaMatrix=48..56}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=57..}] run function asa_animator:zinogre/anim/hand_r_start/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1}] run summon marker ~ ~ ~ {Tags:["ZinogreMoveRotate"]}
    execute if entity @s[scores={AsaMatrix=2}] run tp @e[type=marker,tag=ZinogreMoveRotate,distance=0..3] ~ ~ ~ ~ 0
    execute if entity @s[scores={AsaMatrix=2..10}] at @s rotated as @e[type=marker,tag=ZinogreMoveRotate] run tp @s ^ ^ ^-0.5
    execute if entity @s[scores={AsaMatrix=11..17}] at @s rotated as @e[type=marker,tag=ZinogreMoveRotate] run tp @s ^ ^ ^-0.3
    execute if entity @s[scores={AsaMatrix=18..30}] at @s rotated as @e[type=marker,tag=ZinogreMoveRotate] run tp @s ^ ^ ^-0.05
    execute if entity @s[scores={AsaMatrix=31..38}] run function asa_animator:zinogre/manager/rotate_fast
    execute if entity @s[scores={AsaMatrix=31..34}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..5.5] run tp @s ^ ^ ^0.6 ~ ~
    execute if entity @s[scores={AsaMatrix=34}] at @s run function asa_animator:zinogre/anim/hand_l_start/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=35..42}] at @s run function asa_animator:zinogre/anim/hand_l_start/events/pos/offset

# 演出
    execute if entity @s[scores={AsaMatrix=1..18}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/manager/particle/step

# 攻撃
    execute if entity @s[scores={AsaMatrix=43}] at @s positioned ^-1 ^ ^6 run function asa_animator:zinogre/anim/hand_l_start/events/damage

# 高度調整
    execute if entity @s[scores={AsaMatrix=1..29}] if block ~ ~-0.2 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=1..29}] unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
    execute if entity @s[scores={AsaMatrix=48..}] if block ~ ~0.5 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=48..}] unless block ~ ~0.7 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~