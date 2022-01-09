# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/tail/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/tail/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.01 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:brachyr/anim/tail/keyframes/1
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:brachyr/anim/tail/keyframes/2
execute if entity @s[scores={AsaMatrix=16..22}] run tp @s ^0 ^0.01428571 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:brachyr/anim/tail/keyframes/3
execute if entity @s[scores={AsaMatrix=23..32}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:brachyr/anim/tail/keyframes/4
execute if entity @s[scores={AsaMatrix=33..45}] run tp @s ^0 ^0 ^0 ~0.3 ~
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:brachyr/anim/tail/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=1..8}] run function asa_animator:brachy/manager/rotate_lr_r
execute if entity @s[scores={AsaMatrix=1..7}] unless entity @e[tag=BrachyRAttackTarget,distance=0..4] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={AsaMatrix=24}] positioned ^ ^ ^-5 run function asa_animator:brachyr/anim/tail/events/damage