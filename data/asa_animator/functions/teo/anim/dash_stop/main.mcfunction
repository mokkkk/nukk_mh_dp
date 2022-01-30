# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/dash_stop/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/dash_stop/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.3125 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:teo/anim/dash_stop/keyframes/1
execute if entity @s[scores={AsaMatrix=9..14}] run tp @s ^0 ^-0.08333334 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:teo/anim/dash_stop/keyframes/2
execute if entity @s[scores={AsaMatrix=15..22}] run tp @s ^0 ^-0.25 ^-0.025
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:teo/anim/dash_stop/keyframes/3
execute if entity @s[scores={AsaMatrix=23..32}] run tp @s ^0 ^0 ^-0.1 ~0.5 ~
execute if entity @s[scores={AsaMatrix=33..}] run function asa_animator:teo/anim/dash_stop/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[tag=IsRight,scores={AsaMatrix=1..22}] at @s run tp @s ^0 ^ ^0 ~7.5 ~
execute if entity @s[tag=!IsRight,scores={AsaMatrix=1..22}] at @s run tp @s ^0 ^ ^0 ~-7.5 ~
execute if entity @s[tag=IsRight,scores={AsaMatrix=23..32}] at @s run tp @s ^0 ^ ^0 ~1 ~
execute if entity @s[tag=!IsRight,scores={AsaMatrix=23..32}] at @s run tp @s ^0 ^ ^0 ~-1 ~

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/dash_stop/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=2..22}] run function asa_animator:teo/anim/dash_stop/events/pos/offset

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=22..30}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7