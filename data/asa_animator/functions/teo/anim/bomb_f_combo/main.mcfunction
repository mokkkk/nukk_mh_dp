# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0.04 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/bomb/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.02 ^-0.02 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/bomb/keyframes/2
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^-0.003333334 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:teo/anim/bomb/keyframes/3
execute if entity @s[scores={AsaMatrix=26..50}] run tp @s ^0 ^0.002 ^0.004
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=96}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=10}] run particle dust 1 0.714 0.341 3 ~ ~1 ~ 2 1 2 0 30
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:teo/anim/bomb_f_combo/events/particle
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:teo/anim/voice/events/particle
execute if entity @s[scores={AsaMatrix=10}] run stopsound @a master item.firecharge.use
execute if entity @s[scores={AsaMatrix=10}] run playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=20}] run playsound block.fire.ambient master @a ~ ~ ~ 2 0.7

# コンボキャンセル
    execute unless predicate asa_animator:teo/combo if entity @s[scores={AsaMatrix=45}] run function asa_animator:teo/manager/cancel_animation