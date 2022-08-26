# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/bite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/bite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^-0.02
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:magara/anim/bite/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.02 ^-0.04
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:magara/anim/bite/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0 ^0.2
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:magara/anim/bite/keyframes/3
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^-0.04 ^0.2
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:magara/anim/bite/keyframes/4
execute if entity @s[scores={AsaMatrix=21..23}] run tp @s ^0 ^0 ^0.3 ~0.5 ~
execute if entity @s[scores={AsaMatrix=24..25}] run tp @s ^0 ^0 ^0.05 ~0.5 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:magara/anim/bite/keyframes/5
execute if entity @s[scores={AsaMatrix=26..34}] run tp @s ^0 ^0 ^-0.1 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:magara/anim/bite/keyframes/6
execute if entity @s[scores={AsaMatrix=35..43}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=44..}] run function asa_animator:magara/anim/bite/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..7}] run function asa_animator:magara/manager/rotate
    execute if entity @s[scores={AsaMatrix=8..10}] run function asa_animator:magara/manager/rotate_lr
    execute if entity @s[scores={AsaMatrix=11..15}] positioned ^ ^1 ^4 unless entity @e[tag=MagaraAttackTarget,distance=..3.0] at @s run tp @s ^ ^ ^1.0
    execute if entity @s[scores={AsaMatrix=16..20}] positioned ^ ^1 ^4 unless entity @e[tag=MagaraAttackTarget,distance=..3.0] at @s run tp @s ^ ^ ^0.5

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=25}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=28}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=1..25}] at @e[type=armor_stand,tag=MagaraParts,tag=HeadU,distance=..20] positioned ^ ^1.3 ^0.8 run particle dust 0.325 0.239 0.4 3 ~ ~ ~ 0.3 0.3 0.3 0 1

# 攻撃
    execute if entity @s[scores={AsaMatrix=18}] positioned ^ ^1 ^7 run function asa_animator:magara/anim/bite/events/damage

# 高度調整
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
