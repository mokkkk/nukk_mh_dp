# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim_anger/tail_shot/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/2
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/3
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^-0.0125 ^-0.1
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/4
execute if entity @s[scores={AsaMatrix=25..29}] run tp @s ^0 ^0.01 ^-0.08
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/5
execute if entity @s[scores={AsaMatrix=30..33}] run tp @s ^0 ^0.025 ^0.075
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/6
execute if entity @s[scores={AsaMatrix=34..37}] run tp @s ^0 ^-0.025 ^0.075
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/7
execute if entity @s[scores={AsaMatrix=38..49}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/8
execute if entity @s[scores={AsaMatrix=50..62}] run tp @s ^0 ^0 ^-0.01538462
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:diablos/anim_anger/tail_shot/keyframes/9
execute if entity @s[scores={AsaMatrix=63..75}] run tp @s ^0 ^0 ^-0.03076923 ~0.5 ~
execute if entity @s[scores={AsaMatrix=76..}] run function asa_animator:diablos/anim_anger/tail_shot/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=..12}] run function asa_animator:diablos/manager/rotate
execute if entity @s[scores={AsaMatrix=..12}] at @s if entity @e[tag=DiablosAttackTarget,distance=0..7] at @s run tp @s ^ ^ ^-0.5

execute if entity @s[scores={AsaMatrix=20..37}] at @s unless entity @e[tag=DiablosAttackTarget,distance=0..7] at @s run tp @s ^ ^ ^0.3

execute if entity @s[scores={AsaMatrix=38}] positioned ^ ^ ^6 run function asa_animator:diablos/anim/tail_shot/events/damage

execute if entity @s[scores={AsaMatrix=49}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7