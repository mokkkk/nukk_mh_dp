# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/death/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:brachyr/anim/death/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.0125 ^-0.0125
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:brachyr/anim/death/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^-0.325 ^0.0625
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:brachyr/anim/death/keyframes/2
execute if entity @s[scores={AsaMatrix=17..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:brachyr/anim/death/keyframes/3
execute if entity @s[scores={AsaMatrix=26..40}] run tp @s ^0 ^0.12 ^-0.01333333
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:brachyr/anim/death/keyframes/4
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:brachyr/anim/death/keyframes/5
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^0.006666668 ^-0.006666666
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:brachyr/anim/death/keyframes/6
execute if entity @s[scores={AsaMatrix=61..75}] run tp @s ^0 ^-0.006666668 ^0
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:brachyr/anim/death/keyframes/7
execute if entity @s[scores={AsaMatrix=76..84}] run tp @s ^0 ^-0.2 ^0.03333334
execute if entity @s[scores={AsaMatrix=85}] run function asa_animator:brachyr/anim/death/keyframes/8
execute if entity @s[scores={AsaMatrix=85..100}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=101..}] run function asa_animator:brachyr/anim/death/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if entity @s[scores={AsaMatrix=1..8}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=1..8}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if entity @s[scores={AsaMatrix=17}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=84}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=46}] run playsound entity.blaze.death master @a ~ ~ ~ 1 0.6
execute if entity @s[scores={AsaMatrix=46}] run playsound entity.blaze.death master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={AsaMatrix=46..48}] as @e[type=armor_stand,tag=BrachyRParts,tag=HeadU,distance=0..10] at @s positioned ~ ~1.4 ~ run particle flash ~ ~ ~ 0 0 0 0 1

# execute if entity @s[scores={AsaMatrix=75}] unless entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10248
# execute if entity @s[scores={AsaMatrix=75}] if entity @s[tag=DestroyHead] as @e[distance=0..30,type=armor_stand,tag=BrachyRParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10249