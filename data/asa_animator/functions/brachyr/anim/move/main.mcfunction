# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/move/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/move/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.05 ^0.7
execute if score @s AsaMatrix matches 5 run function asa_animator:brachyr/anim/move/keyframes/1
execute if score @s AsaMatrix matches 5..8 run tp @s ^0 ^-0.05 ^0.7
execute if score @s AsaMatrix matches 9 run function asa_animator:brachyr/anim/move/keyframes/2
execute if score @s AsaMatrix matches 9..12 run tp @s ^0 ^0.05 ^0.7
execute if score @s AsaMatrix matches 13 run function asa_animator:brachyr/anim/move/keyframes/3
execute if score @s AsaMatrix matches 13..17 run tp @s ^0 ^-0.04 ^0.7
execute if score @s AsaMatrix matches 18.. run function asa_animator:brachyr/anim/move/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if score @s AsaMatrix matches 4 run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 9 run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.5
particle block grass_block ~ ~ ~ 1 0.1 1 0 3

# 敵の方向を向く
function asa_animator:brachyr/manager/rotate_fast

# 高度調整
execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 敵に十分近づいた場合，遷移
execute positioned ^ ^ ^5 if entity @e[distance=0..4,tag=BrachyRAttackTarget] run function asa_animator:brachyr/anim/move/events/change