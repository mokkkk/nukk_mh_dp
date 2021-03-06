# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachy/anim/head_bomb_shot/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0 ^-0.5
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^0 ^-0.2
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/3
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0.0125 ^-0.1
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/4
execute if entity @s[scores={AsaMatrix=21..22}] run tp @s ^0 ^0.14 ^3 ~0.5 ~
execute if entity @s[scores={AsaMatrix=23..24}] run tp @s ^0 ^0.14 ^2 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=25}] run tp @s ^0 ^0.14 ^1.2
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/5
execute if entity @s[scores={AsaMatrix=26..28}] run tp @s ^0 ^0 ^0.1333333
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/6
execute if entity @s[scores={AsaMatrix=29..37}] run tp @s ^0 ^-0.1222222 ^-0.04444445
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/7
execute if entity @s[scores={AsaMatrix=38..42}] run tp @s ^0 ^0.02 ^0.3 ~0.5 ~
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/8
execute if entity @s[scores={AsaMatrix=43..47}] run tp @s ^0 ^0.04 ^0.2 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:brachy/anim/head_bomb_shot/keyframes/9
execute if entity @s[scores={AsaMatrix=48..55}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:brachy/anim/head_bomb_shot/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if entity @s[scores={AsaMatrix=1..18}] run function asa_animator:brachy/manager/rotate

execute if entity @s[scores={AsaMatrix=1..12}] if entity @e[tag=BrachyAttackTarget,distance=0..18] at @s run tp @s ^ ^ ^-0.6
execute if entity @s[scores={AsaMatrix=1..12}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=1..12}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AsaMatrix=1..12}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=1..12}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 5

execute if entity @s[scores={AsaMatrix=26}] positioned ^ ^ ^3.5 run function asa_animator:brachy/anim/head_bomb_shot/events/damage
execute if entity @s[scores={AsaMatrix=26}] if entity @s[tag=IsAnger] positioned ^ ^ ^3.5 run function asa_animator:brachy/manager/bomb/head/set
execute if entity @s[scores={AsaMatrix=29}] if entity @s[tag=IsAnger] positioned ^ ^ ^8.5 run function asa_animator:brachy/manager/bomb/head/set
execute if entity @s[scores={AsaMatrix=32}] if entity @s[tag=IsAnger] positioned ^ ^ ^13.5 run function asa_animator:brachy/manager/bomb/head/set
execute if entity @s[scores={AsaMatrix=35}] if entity @s[tag=IsAnger] positioned ^ ^ ^18.5 run function asa_animator:brachy/manager/bomb/head/set

execute if entity @s[scores={AsaMatrix=43..}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=43..}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~