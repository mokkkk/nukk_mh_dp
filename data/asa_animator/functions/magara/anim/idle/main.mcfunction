# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/idle/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/idle/keyframes/0
execute if entity @s[scores={AsaMatrix=1..2}] run tp @s ^0 ^0 ^0 ~0.3 ~
execute if entity @s[scores={AsaMatrix=3..4}] run tp @s ^0 ^0 ^0 ~-0.3 ~
execute if entity @s[scores={AsaMatrix=4..}] run function asa_animator:magara/anim/idle/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 高度調整
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
