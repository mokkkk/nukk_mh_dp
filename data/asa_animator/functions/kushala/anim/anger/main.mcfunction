# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/anger/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/anger/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/anger/keyframes/1
execute if entity @s[scores={AsaMatrix=6..20}] run tp @s ^0 ^0.006666667 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:kushala/anim/anger/keyframes/2
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0 ^-0.02
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:kushala/anim/anger/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..5}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 0.8
execute if entity @s[scores={AsaMatrix=1..5}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 0.6

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~