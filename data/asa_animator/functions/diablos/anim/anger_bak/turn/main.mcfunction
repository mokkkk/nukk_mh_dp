# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/anger/turn/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/anger/turn/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0.025 ^0
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:diablos/anim/anger/turn/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:diablos/anim/anger/turn/keyframes/2
execute if entity @s[scores={AsaMatrix=9..13}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:diablos/anim/anger/turn/keyframes/3
execute if entity @s[scores={AsaMatrix=14..17}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=18..}] run function asa_animator:diablos/anim/anger/turn/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model