# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/anger/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/anger/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0.02 ^0 ~1 ~
execute if score @s AsaMatrix matches 11 run function asa_animator:brachy/anim/anger/keyframes/1
execute if score @s AsaMatrix matches 11..30 run tp @s ^0 ^0.015 ^-0.01 ~-0.3 ~
execute if score @s AsaMatrix matches 31 run function asa_animator:brachy/anim/anger/keyframes/2
execute if score @s AsaMatrix matches 31..45 run tp @s ^0 ^-0.02666667 ^-0.01333333 ~-0.3 ~
execute if score @s AsaMatrix matches 46 run function asa_animator:brachy/anim/anger/keyframes/3
execute if score @s AsaMatrix matches 46..52 run tp @s ^0 ^-0.007142857 ^0.02857143 ~-0.3 ~
execute if score @s AsaMatrix matches 53 run function asa_animator:brachy/anim/anger/keyframes/4
execute if score @s AsaMatrix matches 53..60 run tp @s ^0 ^-0.00625 ^0.025 ~0.5 ~
execute if score @s AsaMatrix matches 61.. run function asa_animator:brachy/anim/anger/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 6 run function asa_animator:brachy/manager/model/change_to_anger
execute if score @s AsaMatrix matches 11..48 as @e[distance=0..10,type=armor_stand,tag=BrachyParts,tag=HeadU] at @s positioned ~ ~1.4 ~ run particle flash ~ ~ ~ 0 0 0 0 1
execute if score @s AsaMatrix matches 11 run playsound entity.blaze.death master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 11 run playsound entity.blaze.death master @a ~ ~ ~ 2 0.6
execute if score @s AsaMatrix matches 11 run particle block grass_block ^ ^ ^2 2 0.1 2 0 30