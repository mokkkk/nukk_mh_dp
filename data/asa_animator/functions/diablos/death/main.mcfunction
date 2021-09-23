# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/death/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/death/keyframes/0
execute if score @s AsaMatrix matches 1..15 run tp @s ^0 ^-0.01333333 ^0.01333333
execute if score @s AsaMatrix matches 16 run function asa_animator:diablos/death/keyframes/1
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:diablos/death/keyframes/2
execute if score @s AsaMatrix matches 21..35 run tp @s ^0 ^0.01333333 ^-0.01333333
execute if score @s AsaMatrix matches 36 run function asa_animator:diablos/death/keyframes/3
execute if score @s AsaMatrix matches 36..40 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 41 run function asa_animator:diablos/death/keyframes/4
execute if score @s AsaMatrix matches 41..50 run tp @s ^-0.04 ^0 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:diablos/death/keyframes/5
execute if score @s AsaMatrix matches 51..55 run tp @s ^-0.02 ^0 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:diablos/death/keyframes/6
execute if score @s AsaMatrix matches 56..65 run tp @s ^-0.15 ^-0.11 ^0
execute if score @s AsaMatrix matches 66 run function asa_animator:diablos/death/keyframes/7
execute if score @s AsaMatrix matches 66..90 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 91.. run function asa_animator:diablos/death/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if score @s AsaMatrix matches 41 run data modify entity @e[type=armor_stand,tag=DiablosParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10039