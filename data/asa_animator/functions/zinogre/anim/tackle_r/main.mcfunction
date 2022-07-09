# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/tackle_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/tackle_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0.0125 ^-0.00625 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/tackle_r/keyframes/1
execute if entity @s[scores={AsaMatrix=9..14}] run tp @s ^0.1166667 ^-0.004166667 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:zinogre/anim/tackle_r/keyframes/2
execute if entity @s[scores={AsaMatrix=15..28}] run tp @s ^0.05 ^-0.00625 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:zinogre/anim/tackle_r/keyframes/3
execute if entity @s[scores={AsaMatrix=29..30}] if block ^-0.8 ^1.5 ^0 #asa_animator:no_collision run tp @s ^-0.8 ^-0.06 ^0
execute if entity @s[scores={AsaMatrix=31..33}] if block ^-1.8 ^1.5 ^0 #asa_animator:no_collision run tp @s ^-1.8 ^-0.06 ^0
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:zinogre/anim/tackle_r/keyframes/4
execute if entity @s[scores={AsaMatrix=34..37}] if block ^-1.4 ^1.5 ^0 #asa_animator:no_collision run tp @s ^-1.4 ^0.025 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:zinogre/anim/tackle_r/keyframes/5
execute if entity @s[scores={AsaMatrix=38..40}] if block ^-0.5 ^1.5 ^0 #asa_animator:no_collision run tp @s ^-0.5 ^0.06666667 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/tackle_r/keyframes/6
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^-0.1 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=46..65}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:zinogre/anim/tackle_r/keyframes/7
execute if entity @s[scores={AsaMatrix=66..75}] run tp @s ^0 ^0.005 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:zinogre/anim/tackle_r/keyframes/8
execute if entity @s[scores={AsaMatrix=76..85}] run tp @s ^0 ^0.0025 ^0
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:zinogre/anim/tackle_r/keyframes/9
execute if entity @s[scores={AsaMatrix=86..95}] run tp @s ^0 ^0.0025 ^0
execute if entity @s[scores={AsaMatrix=96..}] run function asa_animator:zinogre/anim/tackle_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..18}] run function asa_animator:zinogre/anim/tackle_r/events/rotate
    execute if entity @s[scores={AsaMatrix=1..14}] if entity @e[tag=ZinogreAttackTarget,distance=0..8] at @s run tp @s ^0.3 ^ ^

# 高度調整
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=16}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=29..40}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[tag=IsThunder,scores={AsaMatrix=30}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
    execute if entity @s[tag=IsThunder,scores={AsaMatrix=30}] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=32}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[tag=IsThunder,scores={AsaMatrix=31..33}] run particle flash ^ ^3 ^ 2 1 2 0 3

# 攻撃
    execute if entity @s[scores={AsaMatrix=31..40}] run function asa_animator:zinogre/anim/tackle_l/events/damage

# チャージお手移行
    execute if entity @s[tag=IsThunder,scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/tackle_r/events/change