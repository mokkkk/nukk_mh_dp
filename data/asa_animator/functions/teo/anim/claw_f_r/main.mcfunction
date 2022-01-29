# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/claw_f_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/claw_f_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/claw_f_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/claw_f_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^0 ^0.1 ~-1 ~
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:teo/anim/claw_f_r/keyframes/3
execute if entity @s[scores={AsaMatrix=14..16}] run tp @s ^0 ^0 ^0.1 ~-1 ~
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:teo/anim/claw_f_r/keyframes/4
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:teo/anim/claw_f_r/keyframes/5
execute if entity @s[scores={AsaMatrix=25..31}] run tp @s ^0 ^-0.007142857 ^-0.1 ~1 ~
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:teo/anim/claw_f_r/keyframes/6
execute if entity @s[scores={AsaMatrix=32..39}] run tp @s ^0 ^-0.00625 ^-0.1 ~0.4 ~
execute if entity @s[scores={AsaMatrix=40..}] run function asa_animator:teo/anim/claw_f_r/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=24}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=11..16}] unless entity @s[tag=TeoAttackTarget,distance=..7] at @s run tp @s ^ ^ ^0.4

execute if entity @s[scores={AsaMatrix=13}] positioned ^-1.5 ^1 ^5 run function asa_animator:teo/anim/claw_f_l/events/damage