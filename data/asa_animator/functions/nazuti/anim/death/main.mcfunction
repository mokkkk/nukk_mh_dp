# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/death/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/death/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:nazuti/anim/death/keyframes/1
execute if entity @s[scores={AsaMatrix=8..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:nazuti/anim/death/keyframes/2
execute if entity @s[scores={AsaMatrix=11..19}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:nazuti/anim/death/keyframes/3
execute if entity @s[scores={AsaMatrix=20..35}] run tp @s ^0 ^-0.00625 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:nazuti/anim/death/keyframes/4
execute if entity @s[scores={AsaMatrix=36..41}] run tp @s ^0 ^-0.04166666 ^0
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:nazuti/anim/death/keyframes/5
execute if entity @s[scores={AsaMatrix=42..50}] run tp @s ^0 ^-0.005555557 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:nazuti/anim/death/keyframes/6
execute if entity @s[scores={AsaMatrix=51..90}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=91..}] run function asa_animator:nazuti/anim/death/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:nazuti/manager/particle/step

execute if entity @s[scores={AsaMatrix=1..7}] at @s if block ~ ~ ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=1..7}] at @s unless block ~ ~0.2 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/lv/reset