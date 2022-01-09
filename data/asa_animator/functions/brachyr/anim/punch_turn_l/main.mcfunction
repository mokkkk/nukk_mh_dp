# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/punch_turn_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..9}] run tp @s ^0 ^0.02222222 ^-0.05555556
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/1
execute if entity @s[scores={AsaMatrix=10..21}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/2
execute if entity @s[scores={AsaMatrix=22..30}] run tp @s ^0 ^0.01111111 ^-0.01111111
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/3
execute if entity @s[scores={AsaMatrix=31..40}] run tp @s ^0 ^0 ^-0.015
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/4
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^-0.08000001 ^0.15
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/5
execute if entity @s[scores={AsaMatrix=46..49}] run tp @s ^0 ^0.1 ^0.05
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/6
execute if entity @s[scores={AsaMatrix=50..64}] run tp @s ^0 ^-0.02666667 ^-0.01333333
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:brachyr/anim/punch_turn_l/keyframes/7
execute if entity @s[scores={AsaMatrix=65..78}] run tp @s ^0 ^0.007142857 ^-0.03571429
execute if entity @s[scores={AsaMatrix=79..}] run function asa_animator:brachyr/anim/punch_turn_l/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if entity @s[scores={AsaMatrix=21}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=22..36}] run function asa_animator:brachyr/manager/rotate
execute if entity @s[scores={AsaMatrix=22..32}] if entity @e[tag=BrachyAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^-0.5
execute if entity @s[scores={AsaMatrix=36..41}] unless entity @e[tag=BrachyAttackTarget,distance=0..4] at @s run tp @s ^ ^ ^1

execute if entity @s[scores={AsaMatrix=45}] positioned ^ ^ ^3 run function asa_animator:brachyr/anim/punch_l/events/damage
execute unless predicate asa_animator:brachyr/combo if entity @s[scores={AsaMatrix=54}] run function asa_animator:brachyr/manager/cancel_animation

execute if entity @s[scores={AsaMatrix=65..}] run function asa_animator:brachyr/manager/ground