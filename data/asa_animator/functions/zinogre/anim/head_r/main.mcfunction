# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/head_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/head_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..3}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:zinogre/anim/head_r/keyframes/1
execute if entity @s[scores={AsaMatrix=4..10}] run tp @s ^0 ^0 ^-0.02857143
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/head_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^0 ^-0.01666667
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:zinogre/anim/head_r/keyframes/3
execute if entity @s[scores={AsaMatrix=14..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/head_r/keyframes/4
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^0 ^0.0625
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:zinogre/anim/head_r/keyframes/5
execute if entity @s[scores={AsaMatrix=25..29}] run tp @s ^0 ^0 ^0.03
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:zinogre/anim/head_r/keyframes/6
execute if entity @s[scores={AsaMatrix=30..38}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:zinogre/anim/head_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..10}] at @s if entity @e[tag=ZinogreAttackTarget,distance=0..5.5] run tp @s ^ ^ ^-0.3 ~ ~
    execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:zinogre/manager/rotate
    execute if entity @s[scores={AsaMatrix=21..24}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..5.5] run tp @s ^ ^ ^1 ~ ~
    execute if entity @s[scores={AsaMatrix=25..29}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..5.5] run tp @s ^ ^ ^0.1 ~ ~

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=21}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7

# 攻撃
    execute if entity @s[scores={AsaMatrix=24}] positioned ^ ^ ^6 run function asa_animator:zinogre/anim/head_r/events/damage

# 高度調整
    execute if block ~ ~-0.2 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~

# コンボ用
    execute if entity @s[scores={AsaMatrix=30}] unless predicate asa_animator:zinogre/combo run function asa_animator:zinogre/manager/cancel_animation