# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.01 ^0.02 ~0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/stay/keyframes/1
execute if entity @s[scores={AsaMatrix=11..30}] run tp @s ^0 ^0.005 ^0.01 ~-0.25 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:kushala/anim/stay/keyframes/2
execute if entity @s[scores={AsaMatrix=31..50}] run tp @s ^0 ^0 ^-0.02
execute if entity @s[scores={AsaMatrix=51..}] run function asa_animator:kushala/anim/stay/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~