# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/dash_start/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/dash_start/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.01428571 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:zinogre/anim/dash_start/keyframes/1
execute if entity @s[scores={AsaMatrix=8..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/dash_start/keyframes/2
execute if entity @s[scores={AsaMatrix=16..18}] run tp @s ^0 ^0.4 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:zinogre/anim/dash_start/keyframes/3
execute if entity @s[scores={AsaMatrix=19..21}] run tp @s ^0 ^-0.1666667 ^0
execute if entity @s[scores={AsaMatrix=22..}] run function asa_animator:zinogre/anim/dash_start/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7

# 移動
    execute if entity @s[scores={AsaMatrix=1..21}] run function asa_animator:zinogre/manager/rotate
    execute if entity @s[tag=StartAnmTailB,scores={AsaMatrix=1..7}] at @s run tp @s ^ ^ ^-0.5
    execute if entity @s[tag=StartAnmTailB,scores={AsaMatrix=8..15}] at @s run tp @s ^ ^ ^-0.1

# ターゲット設定
    execute if entity @s[scores={AsaMatrix=17}] run summon marker ^ ^ ^10 {Tags:["zinogreDashTarget"]}
    execute if entity @s[scores={AsaMatrix=17}] positioned as @e[tag=zinogreAttackTarget] as @e[type=marker,tag=zinogreDashTarget] run tp @s ~ ~ ~

# 高度調整
    execute if entity @s[tag=StartAnmTailB,scores={AsaMatrix=1..15}] if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[tag=StartAnmTailB,scores={AsaMatrix=1..15}] unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~