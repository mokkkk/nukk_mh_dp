# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/start_fly_turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/start_fly_turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/start_fly_turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.44 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/start_fly_turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..18}] run tp @s ^0 ^-0.075 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:kushala/anim/start_fly_turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=19..26}] run tp @s ^0 ^0.4375 ^0
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:kushala/anim/start_fly_turn_r/keyframes/4
execute if entity @s[scores={AsaMatrix=27..38}] run tp @s ^0 ^-0.2 ^-0.01666667
execute if entity @s[scores={AsaMatrix=39..}] run function asa_animator:kushala/anim/start_fly_turn_r/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=11}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=26}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..5}] run function asa_animator:kushala/anim/step_turn_l/events/rotate
execute if entity @s[scores={AsaMatrix=1}] at @s run function asa_animator:kushala/anim/step_turn_r/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6}] run kill @e[type=marker,tag=KushalaMovePos]
execute if entity @s[scores={AsaMatrix=6..23}] run function asa_animator:kushala/anim/step_turn_l/events/pos/offset

execute if entity @s[scores={AsaMatrix=17..}] at @s run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=7}] if entity @a[distance=..6] as @a[distance=..6] run function mh_dp:player/knockback/start_wind