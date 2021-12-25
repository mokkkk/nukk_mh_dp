# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_charge/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/hand_charge/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.16 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/hand_charge/keyframes/1
execute if entity @s[scores={AsaMatrix=6..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/hand_charge/keyframes/2
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^-0.22 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/hand_charge/keyframes/3
execute if entity @s[scores={AsaMatrix=36..38}] run tp @s ^0 ^0.1 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:zinogre/anim/hand_charge/keyframes/4
execute if entity @s[scores={AsaMatrix=39..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:zinogre/anim/hand_charge/keyframes/5
execute if entity @s[scores={AsaMatrix=56..80}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:zinogre/anim/hand_charge/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model


execute if entity @s[scores={AsaMatrix=1..25}] run function asa_animator:zinogre/manager/rotate
execute if entity @s[scores={AsaMatrix=1..25}] positioned as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] run function asa_animator:zinogre/anim/hand_charge/events/particle
execute if entity @s[scores={AsaMatrix=1..25}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^0.2 ~ ~
execute if entity @s[scores={AsaMatrix=15}] run summon lightning_bolt ~ 255 ~

execute if entity @s[scores={AsaMatrix=30..35}] at @s unless entity @e[tag=ZinogreAttackTarget,distance=0..4] run tp @s ^ ^ ^2 ~ ~

execute if entity @s[scores={AsaMatrix=35}] at @s positioned ^-2 ^ ^3 run function asa_animator:zinogre/anim/hand_charge/events/damage_0
execute if entity @s[scores={AsaMatrix=40}] at @s positioned ^-2 ^ ^6 run function asa_animator:zinogre/anim/hand_charge/events/damage_1
execute if entity @s[scores={AsaMatrix=45}] at @s positioned ^-2 ^ ^9 run function asa_animator:zinogre/anim/hand_charge/events/damage_2
