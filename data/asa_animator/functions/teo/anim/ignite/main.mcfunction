# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/ignite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/ignite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:teo/anim/ignite/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:teo/anim/ignite/keyframes/2
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/ignite/keyframes/3
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0.02 ^-0.02
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:teo/anim/ignite/keyframes/4
execute if entity @s[scores={AsaMatrix=31..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:teo/anim/ignite/keyframes/5
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^-0.006666667 ^0
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:teo/anim/ignite/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:teo/manager/bomb/ingite

execute if entity @s[scores={AsaMatrix=25..40}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.9
execute if entity @s[scores={AsaMatrix=25..40}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=25..40}] run playsound entity.polar_bear.warning master @a ~ ~ ~ 3 0.7