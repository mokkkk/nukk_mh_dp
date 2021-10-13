# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_stop/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/normal/dash_stop/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^0.04285714 ^0.6285714
execute if score @s AsaMatrix matches 8 run function asa_animator:diablos/anim/normal/dash_stop/keyframes/1
execute if score @s AsaMatrix matches 8..14 run tp @s ^0 ^-0.05714286 ^0.4142857
execute if score @s AsaMatrix matches 15 run function asa_animator:diablos/anim/normal/dash_stop/keyframes/2
execute if score @s AsaMatrix matches 15..30 run tp @s ^0 ^0 ^0.13125
execute if score @s AsaMatrix matches 31 run function asa_animator:diablos/anim/normal/dash_stop/keyframes/3
execute if score @s AsaMatrix matches 31..35 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:diablos/anim/normal/dash_stop/keyframes/4
execute if score @s AsaMatrix matches 36..50 run tp @s ^0 ^0.006666667 ^0.03333334
execute if score @s AsaMatrix matches 51.. run function asa_animator:diablos/anim/normal/dash_stop/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 高度調整
execute at @s positioned ~ ~1 ~ run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~

# 攻撃
execute if score @s AsaMatrix matches 1..28 if entity @e[type=!armor_stand,type=!marker,distance=0..5] run function asa_animator:diablos/anim/normal/dash/events/damage

execute if score @s AsaMatrix matches 1..28 run playsound block.grass.step master @a ~ ~ ~ 3 0.8
execute if score @s AsaMatrix matches 1..28 run particle block sand ~ ~0.5 ~ 1 0 1 0 3