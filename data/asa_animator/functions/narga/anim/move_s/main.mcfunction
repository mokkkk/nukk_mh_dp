# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/move_s/start
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/move_s/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.025 ^0.8
execute if score @s AsaMatrix matches 5 run function asa_animator:narga/anim/move_s/keyframes/1
execute if score @s AsaMatrix matches 5..8 run tp @s ^0 ^-0.025 ^0.8
execute if score @s AsaMatrix matches 9 run function asa_animator:narga/anim/move_s/keyframes/2
execute if score @s AsaMatrix matches 9..12 run tp @s ^0 ^0.025 ^0.8
execute if score @s AsaMatrix matches 13 run function asa_animator:narga/anim/move_s/keyframes/3
execute if score @s AsaMatrix matches 13..16 run tp @s ^0 ^-0.025 ^0.8
execute if score @s AsaMatrix matches 17.. run function asa_animator:narga/anim/move_s/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

# 敵の方向を向く
function asa_animator:narga/manager/rotate

# 高度調整
execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 敵に十分近づいた場合，噛みつきに遷移
execute positioned ^ ^ ^4 if entity @e[distance=0..4,tag=NargaAttackTarget] run function asa_animator:narga/anim/move_s/events/change

execute if score @s AsaMatrix matches 4 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 12 run playsound block.grass.step master @a ~ ~ ~ 2 0.7