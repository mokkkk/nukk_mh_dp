# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/lightning_claw_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/1
execute if entity @s[scores={AsaMatrix=6..14}] run tp @s ^0 ^-0.02222222 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/2
execute if entity @s[scores={AsaMatrix=15..21}] run tp @s ^0 ^0.08571429 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/3
execute if entity @s[scores={AsaMatrix=22..32}] run tp @s ^0 ^0.009090909 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/4
execute if entity @s[scores={AsaMatrix=33..37}] run tp @s ^0 ^-0.04 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/5
execute if entity @s[scores={AsaMatrix=38..42}] run tp @s ^0 ^-0.04 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/6
execute if entity @s[scores={AsaMatrix=43..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/7
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0.4 ^0.42 ^0
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/8
execute if entity @s[scores={AsaMatrix=61..64}] run tp @s ^-0.25 ^1.5 ^-0.375 ~19 ~
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/9
execute if entity @s[scores={AsaMatrix=65..69}] run tp @s ^-0.05 ^0.025 ^-0.1125 ~19 ~
execute if entity @s[scores={AsaMatrix=70}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/10
execute if entity @s[scores={AsaMatrix=70..76}] run tp @s ^-0.03571429 ^-0.6107143 ^-0.08035714 ~18 ~
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/11
execute if entity @s[scores={AsaMatrix=77..87}] run tp @s ^-0.04545455 ^-0.3772728 ^-0.4 ~3 ~
execute if entity @s[scores={AsaMatrix=88}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/12
execute if entity @s[scores={AsaMatrix=88..102}] run tp @s ^0 ^0 ^-0.1 ~0.5 ~
execute if entity @s[scores={AsaMatrix=103}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/13
execute if entity @s[scores={AsaMatrix=103..117}] run tp @s ^0 ^0.003333333 ^0.008333334
execute if entity @s[scores={AsaMatrix=118}] run function asa_animator:zinogre/anim/lightning_claw_l/keyframes/14
execute if entity @s[scores={AsaMatrix=118..132}] run tp @s ^0 ^0.003333333 ^0.008333334
execute if entity @s[scores={AsaMatrix=133..}] run function asa_animator:zinogre/anim/lightning_claw_l/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=15}] run summon lightning_bolt ~ 255 ~
    execute if entity @s[scores={AsaMatrix=15..25}] at @s run particle dust 1 1000000000 1000000000 3 ~ ~5 ~ 3 3 3 0 30
    execute if entity @s[scores={AsaMatrix=15..25}] at @s run particle sneeze ~ ~5 ~ 2 2 2 0.3 30
    execute if entity @s[scores={AsaMatrix=15..25}] at @s run particle flash ~ ~5 ~ 2 2 2 0 1
    execute if entity @s[scores={AsaMatrix=15..79}] at @s run function asa_animator:zinogre/anim/chargehand_l/events/particle
    execute if entity @s[scores={AsaMatrix=56..60}] at @s run function asa_animator:zinogre/anim/lightning_claw_r/events/particle_m
    execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=87}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=61..65}] at @e[type=marker,tag=ZinogreMoveRotate] run function asa_animator:zinogre/anim/lightning_claw_r/events/claw_effect/main
    execute if entity @s[scores={AsaMatrix=15..25}] positioned ^ ^3 ^1 run function asa_animator:zinogre/anim/charge/events/particle

# 移動
    execute if entity @s[scores={AsaMatrix=1..14}] run function asa_animator:zinogre/manager/rotate
    execute if entity @s[scores={AsaMatrix=33..47}] run function asa_animator:zinogre/manager/rotate
    execute if entity @s[scores={AsaMatrix=33..47}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=..17] run tp @s ^ ^ ^0.1
    execute if entity @s[scores={AsaMatrix=47}] at @s run function asa_animator:zinogre/anim/lightning_claw_r/events/pos/set_pos_0
    execute if entity @s[scores={AsaMatrix=56..60}] run function asa_animator:zinogre/anim/lightning_claw_r/events/pos/offset_0
    execute if entity @s[scores={AsaMatrix=60}] at @s run function asa_animator:zinogre/anim/lightning_claw_r/events/pos/set_pos_1
    execute if entity @s[scores={AsaMatrix=61..87}] run function asa_animator:zinogre/anim/lightning_claw_r/events/pos/offset_1

# 攻撃
    execute if entity @s[scores={AsaMatrix=60}] positioned ^ ^ ^6 run function asa_animator:zinogre/anim/lightning_claw_r/events/damage_h

# 高度調整
    execute if entity @s[scores={AsaMatrix=87..}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=87..}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
