# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/idle/start
execute if entity @s[scores={AsaMatrix=1..}] run function asa_animator:zinogre/anim/idle/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 高度調整
    execute if block ~ ~-0.2 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~