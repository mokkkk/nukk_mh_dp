# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_b/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_b/keyframes/0
execute if entity @s[scores={AsaMatrix=1..12}] run tp @s ^0 ^0.2 ^-0.4
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:kushala/anim/flying_move_b/keyframes/1
execute if entity @s[scores={AsaMatrix=13..30}] run tp @s ^0 ^-0.1333333 ^-0.3
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:kushala/anim/flying_move_b/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=12}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
function asa_animator:kushala/manager/rotate