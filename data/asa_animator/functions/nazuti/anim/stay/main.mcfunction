# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:nazuti/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:nazuti/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=18..27}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:nazuti/anim/stay/keyframes/3
execute if entity @s[scores={AsaMatrix=28..34}] run tp @s ^0 ^-0.01428571 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:nazuti/anim/stay/keyframes/4
execute if entity @s[scores={AsaMatrix=35..44}] run tp @s ^0 ^0 ^0 ~0.1 ~
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:nazuti/anim/stay/keyframes/5
execute if entity @s[scores={AsaMatrix=45..55}] run tp @s ^0 ^0.009090909 ^0 ~-0.1 ~
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:nazuti/anim/stay/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute unless predicate asa_animator:nazuti/combo if entity @s[scores={AsaMatrix=1}] run tag @s add ChangeAnm
# execute if entity @s[tag=IsAnger,scores={AsaMatrix=1}] run tag @s add ChangeAnm
# execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_nazuti_actcount AsaMatrix matches 1.. run function asa_animator:nazuti/anim/stay/events/change

execute at @s if block ~ ~ ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~0.2 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if entity @s[scores={AsaMatrix=16}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=19}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_invisible
execute if entity @s[scores={AsaMatrix=32}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=35}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_end