# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_damage/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_damage/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.08 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/flying_damage/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.2 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/flying_damage/keyframes/2
execute if entity @s[scores={AsaMatrix=11..16}] run tp @s ^0 ^ ^0.03333334
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:teo/anim/flying_damage/keyframes/3
execute if entity @s[scores={AsaMatrix=17..22}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:teo/anim/flying_damage/keyframes/4
execute if entity @s[scores={AsaMatrix=23..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:teo/anim/flying_damage/keyframes/5
execute if entity @s[scores={AsaMatrix=41..51}] run tp @s ^0 ^0.07272727 ^-0.009090909
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:teo/anim/flying_damage/keyframes/6
execute if entity @s[scores={AsaMatrix=52..62}] run tp @s ^0 ^0.03636364 ^-0.009090909
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:teo/anim/flying_damage/keyframes/7
execute if entity @s[scores={AsaMatrix=63..74}] run tp @s ^0 ^0.01666667 ^0
execute if entity @s[scores={AsaMatrix=75..}] run function asa_animator:teo/anim/flying_damage/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=10}] at @s run function asa_animator:teo/anim/flying_damage/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=11..22}] run function asa_animator:teo/anim/flying_damage/events/pos/offset
execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22}] positioned ~ ~1.5 ~ run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=40}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=62}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7