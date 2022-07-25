# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:zinogre/anim/turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:zinogre/anim/turn_r/keyframes/4
execute if entity @s[scores={AsaMatrix=17..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26..}] run function asa_animator:zinogre/anim/turn_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..}] run function asa_animator:zinogre/manager/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.9
    execute if entity @s[scores={AsaMatrix=16}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.9