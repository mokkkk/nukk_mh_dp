# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/head/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/head/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/head/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0 ^-0.1428571
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:zinogre/anim/head/keyframes/2
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/head/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0.52
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/head/keyframes/4
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36..}] run function asa_animator:zinogre/anim/head/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# ホーミング
execute if score #asa_zinogre_kindex AsaMatrix matches ..14 run function asa_animator:zinogre/manager/rotate_fast
execute if score #asa_zinogre_kindex AsaMatrix matches 21..25 at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^0.5 ~ ~

execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:zinogre/anim/head/events/damage