# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0.2833333 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:kushala/anim/flying_move_l/keyframes/1
execute if entity @s[scores={AsaMatrix=7..16}] run tp @s ^0 ^-0.35 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:kushala/anim/flying_move_l/keyframes/2
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0.2 ^0.3375 ^-0.1
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:kushala/anim/flying_move_l/keyframes/3
execute if entity @s[scores={AsaMatrix=25..29}] run tp @s ^0 ^-0.025 ^0.015
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:kushala/anim/flying_move_l/keyframes/4
execute if entity @s[scores={AsaMatrix=30..40}] run tp @s ^0 ^-0.07045455 ^0.02045454
execute if entity @s[scores={AsaMatrix=41..}] run function asa_animator:kushala/anim/flying_move_l/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=16}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..5}] run function asa_animator:kushala/anim/step_turn_l/events/rotate
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_l/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6}] run kill @e[type=marker,tag=KushalaMovePos]
execute if entity @s[scores={AsaMatrix=1..16}] run function asa_animator:kushala/anim/flying_move_l/events/pos/offset

execute if entity @s[scores={AsaMatrix=17..}] at @s run function asa_animator:kushala/manager/rotate