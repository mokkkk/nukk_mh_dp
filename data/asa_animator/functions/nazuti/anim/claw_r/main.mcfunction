# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/claw_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/claw_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.02
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/claw_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0 ^0 ^-0.01
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:nazuti/anim/claw_r/keyframes/2
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^0 ^0.02
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/claw_r/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0.04
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/anim/claw_r/keyframes/4
execute if entity @s[scores={AsaMatrix=26..32}] run tp @s ^0 ^0 ^0.01428571 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:nazuti/anim/claw_r/keyframes/5
execute if entity @s[scores={AsaMatrix=33..38}] run tp @s ^0 ^-0.01666667 ^-0.01666667 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:nazuti/anim/claw_r/keyframes/6
execute if entity @s[scores={AsaMatrix=39..44}] run tp @s ^0 ^0.01666667 ^-0.01666667 ~0.5 ~
execute if entity @s[scores={AsaMatrix=45..}] run function asa_animator:nazuti/anim/claw_r/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^ ^ ^-0.05
execute if entity @s[scores={AsaMatrix=1..10}] run function asa_animator:nazuti/manager/rotate

execute if entity @s[scores={AsaMatrix=21..25}] unless entity @e[tag=NazutiAttackTarget,distance=0..5] run tp @s ^ ^ ^0.8

execute if entity @s[scores={AsaMatrix=25}] positioned ^-0.5 ^ ^4 run function asa_animator:nazuti/anim/claw_l/events/damage