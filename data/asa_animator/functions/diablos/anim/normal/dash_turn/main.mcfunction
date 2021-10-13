# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_turn/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_turn/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0 ^-0.2
execute if score @s AsaMatrix matches 6 run function asa_animator:diablos/anim/normal/dash_turn/keyframes/1
execute if score @s AsaMatrix matches 6..25 run tp @s ^0 ^0 ^-0.1
execute if score @s AsaMatrix matches 26 run function asa_animator:diablos/anim/normal/dash_turn/keyframes/2
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^0 ^-0.05
execute if score @s AsaMatrix matches 31.. run function asa_animator:diablos/anim/normal/dash_turn/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 高度調整
execute at @s positioned ~ ~1 ~ run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~

# 敵を向く
execute if score @s AsaMatrix matches 1..20 run function asa_animator:diablos/manager/rotate

# 突進位置再決定
execute if score @s AsaMatrix matches 20 positioned as @e[tag=DiablosAttackTarget] rotated ~ 0 positioned ^ ^ ^3 as @e[type=marker,tag=DiablosDashTarget] run tp @s ~ ~ ~

playsound block.grass.step master @a ~ ~ ~ 3 0.8
particle block sand ~ ~0.5 ~ 1 0 1 0 3