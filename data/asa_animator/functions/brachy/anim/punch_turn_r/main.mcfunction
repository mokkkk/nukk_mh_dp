# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachy/anim/punch_turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.04 ^-0.1
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..11}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=12..19}] run tp @s ^0 ^0.0125 ^-0.0125
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=20..27}] run tp @s ^0 ^0 ^-0.01875
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/4
execute if entity @s[scores={AsaMatrix=28..32}] run tp @s ^0 ^-0.08000001 ^0.15
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/5
execute if entity @s[scores={AsaMatrix=33..35}] run tp @s ^0 ^0.1333333 ^0.06666667
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/6
execute if entity @s[scores={AsaMatrix=36..48}] run tp @s ^0 ^-0.03076923 ^-0.01538462
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:brachy/anim/punch_turn_r/keyframes/7
execute if entity @s[scores={AsaMatrix=49..60}] run tp @s ^0 ^0.008333334 ^-0.04166667
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:brachy/anim/punch_turn_r/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if entity @s[scores={AsaMatrix=11}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=11..23}] run function asa_animator:brachy/manager/rotate
execute if entity @s[scores={AsaMatrix=11..22}] if entity @e[tag=BrachyAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^-0.5
execute if entity @s[scores={AsaMatrix=28..31}] unless entity @e[tag=BrachyAttackTarget,distance=0..4] at @s run tp @s ^ ^ ^1

execute if entity @s[scores={AsaMatrix=32}] positioned ^ ^ ^3 run function asa_animator:brachy/anim/punch_l/events/damage
execute unless predicate asa_animator:brachy/combo if entity @s[scores={AsaMatrix=40}] run function asa_animator:brachy/manager/cancel_animation

execute if entity @s[scores={AsaMatrix=49..}] run function asa_animator:brachy/manager/ground