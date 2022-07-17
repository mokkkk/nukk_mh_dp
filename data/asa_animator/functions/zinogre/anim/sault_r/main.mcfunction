# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/sault_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/sault_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^-0.0125
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/sault_r/keyframes/1
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0 ^-0.0125
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/sault_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..35}] run tp @s ^0 ^0 ^-0.002173913
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/sault_r/keyframes/3
execute if entity @s[scores={AsaMatrix=36..40}] run tp @s ^0 ^-0.04 ^0.8 ~-3 ~
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/sault_r/keyframes/4
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^-0.55 ^0.18 ^0.45 ~-20 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:zinogre/anim/sault_r/keyframes/5
execute if entity @s[scores={AsaMatrix=46..55}] run tp @s ^-0.55 ^0.1 ^0.45 ~-22 ~
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/anim/sault_r/keyframes/6
execute if entity @s[scores={AsaMatrix=56..65}] run tp @s ^-0.55 ^0.01999999 ^0.45 ~-24 ~
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:zinogre/anim/sault_r/keyframes/7
execute if entity @s[scores={AsaMatrix=66..70}] run tp @s ^0 ^1.28 ^0 ~-26 ~
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:zinogre/anim/sault_r/keyframes/8
execute if entity @s[scores={AsaMatrix=71..75}] run tp @s ^0 ^-0.1200001 ^0 ~-32 ~
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:zinogre/anim/sault_r/keyframes/9
execute if entity @s[scores={AsaMatrix=76..80}] run tp @s ^0.1 ^-0.89 ^-0.125 ~-16 ~
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:zinogre/anim/sault_r/keyframes/10
execute if entity @s[scores={AsaMatrix=81..85}] run tp @s ^0.1 ^-0.77 ^-0.125 ~-13 ~
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:zinogre/anim/sault_r/keyframes/11
execute if entity @s[scores={AsaMatrix=86..92}] run tp @s ^-0.3 ^0 ^-0.4 ~-8 ~
execute if entity @s[scores={AsaMatrix=93..98}] run tp @s ^-0.1 ^0 ^-0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=99}] run function asa_animator:zinogre/anim/sault_r/keyframes/12
execute if entity @s[scores={AsaMatrix=99..118}] run tp @s ^0 ^0 ^-0.05 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=119}] run function asa_animator:zinogre/anim/sault_r/keyframes/13
execute if entity @s[scores={AsaMatrix=119..138}] run tp @s ^-0.05 ^0.03 ^0.0125 ~0.5 ~
execute if entity @s[scores={AsaMatrix=139..}] run function asa_animator:zinogre/anim/sault_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..26}] run function asa_animator:zinogre/manager/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=47}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=62}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.9
    execute if entity @s[scores={AsaMatrix=86}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=86..90}] run playsound block.grass.step master @a ~ ~ ~ 2 0.8

# 攻撃
    execute if entity @s[scores={AsaMatrix=45..75}] at @e[type=armor_stand,tag=ZinogreParts,tag=Tail3] run function asa_animator:zinogre/anim/sault_r/events/damage

# 状態更新
    execute if entity @s[scores={AsaMatrix=66}] run tag @s add IsFlying
    execute if entity @s[scores={AsaMatrix=86}] run tag @s remove IsFlying
    
# 高度調整
    execute if entity @s[scores={AsaMatrix=1..35}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=1..35}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=85..108}] at @s if block ~ ~0.6 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=85..108}] at @s unless block ~ ~0.8 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=129..}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=129..}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~