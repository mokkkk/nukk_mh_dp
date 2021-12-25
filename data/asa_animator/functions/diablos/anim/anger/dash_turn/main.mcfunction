# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/anger/dash_turn/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/anger/dash_turn/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:diablos/anim/anger/dash_turn/keyframes/1
execute if entity @s[scores={AsaMatrix=5..21}] run tp @s ^0 ^0 ^-0.04117647
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:diablos/anim/anger/dash_turn/keyframes/2
execute if entity @s[scores={AsaMatrix=22..26}] run tp @s ^0 ^0 ^-0.08
execute if entity @s[scores={AsaMatrix=27..}] run function asa_animator:diablos/anim/normal/dash_turn/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 高度調整
execute at @s positioned ~ ~1 ~ run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.5 ~ ~ ~

# 敵を向く
execute if entity @s[scores={AsaMatrix=1..17}] run function asa_animator:diablos/manager/rotate

playsound block.grass.step master @a ~ ~ ~ 3 0.8
particle block sand ~ ~0.5 ~ 1 0 1 0 3