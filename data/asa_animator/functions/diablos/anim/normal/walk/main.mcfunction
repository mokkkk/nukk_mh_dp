# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/normal/walk/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/normal/walk/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim/normal/walk/keyframes/1
execute if entity @s[scores={AsaMatrix=6..11}] run tp @s ^0 ^-0.03333334 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:diablos/anim/normal/walk/keyframes/2
execute if entity @s[scores={AsaMatrix=12..17}] run tp @s ^0 ^0.03333334 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:diablos/anim/normal/walk/keyframes/3
execute if entity @s[scores={AsaMatrix=18..23}] run tp @s ^0 ^-0.03333334 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:diablos/anim/normal/walk/keyframes/4
execute if entity @s[scores={AsaMatrix=24..29}] run tp @s ^0 ^0.03333334 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:diablos/anim/normal/walk/keyframes/5
execute if entity @s[scores={AsaMatrix=30..35}] run tp @s ^0 ^-0.01666667 ^0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=36..}] run function asa_animator:diablos/anim/normal/walk/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=11}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=23}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=35}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=1..35}] at @s if block ^ ^ ^0.2 #asa_animator:no_collision run tp @s ^ ^ ^0.2