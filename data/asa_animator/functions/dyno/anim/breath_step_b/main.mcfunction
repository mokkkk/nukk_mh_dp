# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/breath_step_b/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/breath_step_b/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^-0.06
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:dyno/anim/breath_step_b/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:dyno/anim/breath_step_b/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0.69 ^0.06
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:dyno/anim/breath_step_b/keyframes/3
execute if entity @s[scores={AsaMatrix=16..22}] run tp @s ^0 ^-0.2714286 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:dyno/anim/breath_step_b/keyframes/4
execute if entity @s[scores={AsaMatrix=23..29}] run tp @s ^0 ^-0.2428571 ^0
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:dyno/anim/breath_step_b/keyframes/5
execute if entity @s[scores={AsaMatrix=30..34}] run tp @s ^0 ^-0.06 ^-0.04
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:dyno/anim/breath_step_b/keyframes/6
execute if entity @s[scores={AsaMatrix=35..39}] run tp @s ^0 ^0.1 ^0.04
execute if entity @s[scores={AsaMatrix=40..}] run function asa_animator:dyno/anim/breath_step_b/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if entity @s[scores={AsaMatrix=30..}] run function asa_animator:dyno/manager/ground

execute if entity @s[scores={AsaMatrix=1..12}] if entity @e[tag=DynoAttackTarget,distance=..15] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={AsaMatrix=1..30}] run function asa_animator:dyno/manager/rotate
execute if entity @s[scores={AsaMatrix=15}] if entity @e[tag=DynoAttackTarget,distance=..18] positioned ^ ^2 ^6 rotated ~ 60 run function asa_animator:dyno/anim/breath_step_b/events/shot
execute if entity @s[scores={AsaMatrix=15}] unless entity @e[tag=DynoAttackTarget,distance=..18] positioned ^ ^2 ^6 rotated ~ 25 run function asa_animator:dyno/anim/breath_step_b/events/shot

execute if entity @s[scores={AsaMatrix=15}] at @s run function asa_animator:dyno/anim/breath_step_b/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=16..29}] at @s run function asa_animator:dyno/anim/breath_step_b/events/pos/offset