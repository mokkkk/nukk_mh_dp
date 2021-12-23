# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:dyno/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^-0.01428571 ^0.01428571
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:dyno/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^0 ^0.01428571 ^-0.01428571
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:dyno/anim/stay/keyframes/3
execute if entity @s[scores={AsaMatrix=25..31}] run tp @s ^0 ^-0.01428571 ^0.01428571
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:dyno/anim/stay/keyframes/4
execute if entity @s[scores={AsaMatrix=32..42}] run tp @s ^0 ^0 ^0.009090909
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:dyno/anim/stay/keyframes/5
execute if entity @s[scores={AsaMatrix=43..54}] run tp @s ^0 ^0.004166667 ^-0.008333334
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:dyno/anim/stay/keyframes/6
execute if entity @s[scores={AsaMatrix=55..65}] run tp @s ^0 ^0.004545454 ^-0.009090909
execute if entity @s[scores={AsaMatrix=66..}] run function asa_animator:dyno/anim/stay/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

function asa_animator:dyno/manager/ground

execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_dyno_actcount AsaMatrix matches 1.. run function asa_animator:dyno/anim/stay/events/change