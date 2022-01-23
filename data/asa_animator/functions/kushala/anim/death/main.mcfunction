# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/death/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/death/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.01 ^0.02 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/death/keyframes/1
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:kushala/anim/death/keyframes/2
execute if entity @s[scores={AsaMatrix=26..40}] run tp @s ^0 ^0.006666667 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:kushala/anim/death/keyframes/3
execute if entity @s[scores={AsaMatrix=41..59}] run tp @s ^0.006578947 ^-0.00131579 ^0
execute if entity @s[scores={AsaMatrix=60}] run function asa_animator:kushala/anim/death/keyframes/4
execute if entity @s[scores={AsaMatrix=60..70}] run tp @s ^0.03409091 ^-0.00681818 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:kushala/anim/death/keyframes/5
execute if entity @s[scores={AsaMatrix=71..82}] run tp @s ^0.1666667 ^-0.1083333 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=83}] run function asa_animator:kushala/anim/death/keyframes/6
execute if entity @s[scores={AsaMatrix=83..92}] run tp @s ^0.03 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=93}] run function asa_animator:kushala/anim/death/keyframes/7
execute if entity @s[scores={AsaMatrix=93..117}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=118..}] run function asa_animator:kushala/anim/death/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..5}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=1..5}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=26..30}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=26..30}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 0.6

execute if entity @s[scores={AsaMatrix=70}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=92}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=70}] unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10418
execute if entity @s[scores={AsaMatrix=70}] if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10420