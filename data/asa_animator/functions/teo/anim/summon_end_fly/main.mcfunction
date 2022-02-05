# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/summon_end_fly/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/summon_end_fly/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.05 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/summon_end_fly/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0.175 ^-0.02
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/summon_end_fly/keyframes/2
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^-0.125 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:teo/anim/summon_end_fly/keyframes/3
execute if entity @s[scores={AsaMatrix=31..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:teo/anim/summon_end_fly/keyframes/4
execute if entity @s[scores={AsaMatrix=41..60}] run tp @s ^0 ^0.0175 ^0.01
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:teo/anim/summon_end_fly/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:teo/manager/particle/step

execute if entity @s[scores={AsaMatrix=1}] at @s run function asa_animator:teo/anim/summon_end_fly/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=1..30}] run function asa_animator:teo/anim/summon_end_fly/events/pos/offset

execute if entity @s[scores={AsaMatrix=41..60}] at @s if block ~ ~-0.55 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=41..60}] at @s unless block ~ ~-0.35 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.05 ~ ~ ~