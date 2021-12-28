# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:reus/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=18..24}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/stay/keyframes/3
execute if entity @s[scores={AsaMatrix=25..42}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/stay/keyframes/4
execute if entity @s[scores={AsaMatrix=43..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:reus/anim/stay/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_reus_actcount AsaMatrix matches 1.. run function asa_animator:reus/anim/stay/events/change

execute if entity @s[scores={AsaMatrix=11}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~