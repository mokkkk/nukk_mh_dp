# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/step_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/step_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/step_l/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.44 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/step_l/keyframes/2
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^-0.3142857 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:kushala/anim/step_l/keyframes/3
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^0.05714286 ^0 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=25..}] run function asa_animator:kushala/anim/step_l/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:kushala/manager/particle/step

execute if entity @s[scores={AsaMatrix=5}] at @s run function asa_animator:kushala/anim/step_l/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6..17}] run function asa_animator:kushala/anim/step_l/events/pos/offset