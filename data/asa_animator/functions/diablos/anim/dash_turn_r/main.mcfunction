# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dash_turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dash_turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.02 ^-0.04 ^-0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim/dash_turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0.01 ^0 ^-0.13
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/dash_turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^-0.02 ^0.02 ^0.14
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/dash_turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^-0.02 ^0.02 ^0.16
execute if entity @s[scores={AsaMatrix=26..}] run function asa_animator:diablos/anim/dash_turn_r/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

function asa_animator:diablos/manager/rotate

execute if entity @s[scores={AsaMatrix=1..15}] at @s run tp @s ^ ^ ^-0.5
execute if entity @s[scores={AsaMatrix=16..20}] at @s run tp @s ^ ^ ^-0.3
execute if entity @s[scores={AsaMatrix=1..15}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

particle block sand ~ ~0.3 ~ 1 0 1 0 5
execute if entity @s[scores={AsaMatrix=21}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=25}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5