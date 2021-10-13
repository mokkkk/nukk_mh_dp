# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/tail_whip/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^-0.03 ^-0.08
execute if score @s AsaMatrix matches 11 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/1
execute if score @s AsaMatrix matches 11..19 run tp @s ^0 ^0 ^-0.02222222
execute if score @s AsaMatrix matches 20 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/2
execute if score @s AsaMatrix matches 20..27 run tp @s ^0 ^0.0375 ^0.025
execute if score @s AsaMatrix matches 28 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/3
execute if score @s AsaMatrix matches 28..31 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 32 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/4
execute if score @s AsaMatrix matches 32..34 run tp @s ^0 ^-0.1 ^0.2
execute if score @s AsaMatrix matches 35 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/5
execute if score @s AsaMatrix matches 35..47 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 48 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/6
execute if score @s AsaMatrix matches 48..56 run tp @s ^-0.05555556 ^0 ^-0.3111111
execute if score @s AsaMatrix matches 57 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/7
execute if score @s AsaMatrix matches 57..59 run tp @s ^0 ^0 ^-0.0333333
execute if score @s AsaMatrix matches 60 run function asa_animator:diablos/anim/anger/tail_whip/keyframes/8
execute if score @s AsaMatrix matches 60..69 run tp @s ^0.05 ^0.03 ^-0.04000001
execute if score @s AsaMatrix matches 70.. run function asa_animator:diablos/anim/normal/tail_whip/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 敵を向く
execute if score @s AsaMatrix matches 1..24 run function asa_animator:diablos/manager/rotate

# ホーミング移動
execute if score @s AsaMatrix matches 19..27 at @s positioned ^ ^ ^2 unless entity @e[tag=DiablosAttackTarget,distance=0..4] at @s run tp @s ^ ^ ^0.6

# 攻撃
execute if score @s AsaMatrix matches 35 as @e[type=armor_stand,tag=DiablosParts,tag=Tail2] at @s positioned ~ ~1.3 ~ run function asa_animator:diablos/anim/normal/tail_whip/events/damage