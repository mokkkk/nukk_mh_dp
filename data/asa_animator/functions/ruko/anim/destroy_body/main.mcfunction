# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/destroy_body/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/destroy_body/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^-0.01666667 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:ruko/anim/destroy_body/keyframes/1
execute if entity @s[scores={AsaMatrix=7..18}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:ruko/anim/destroy_body/keyframes/2
execute if entity @s[scores={AsaMatrix=19..32}] run tp @s ^0 ^-0.007142857 ^0
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:ruko/anim/destroy_body/keyframes/3
execute if entity @s[scores={AsaMatrix=33..45}] run tp @s ^0 ^0.01538462 ^0
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:ruko/anim/destroy_body/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/manager/particle/step

execute if entity @s[scores={AsaMatrix=1..3}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..3}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=1..3}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.7

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~