# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/charge_bomb/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/charge_bomb/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 9 run function asa_animator:brachy/anim/charge_bomb/keyframes/1
execute if score @s AsaMatrix matches 9..18 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 19 run function asa_animator:brachy/anim/charge_bomb/keyframes/2
execute if score @s AsaMatrix matches 19..24 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 25 run function asa_animator:brachy/anim/charge_bomb/keyframes/3
execute if score @s AsaMatrix matches 25..34 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 35 run function asa_animator:brachy/anim/charge_bomb/keyframes/4
execute if score @s AsaMatrix matches 35..44 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 45 run function asa_animator:brachy/anim/charge_bomb/keyframes/5
execute if score @s AsaMatrix matches 45..50 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:brachy/anim/charge_bomb/keyframes/6
execute if score @s AsaMatrix matches 51..65 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 66.. run function asa_animator:brachy/anim/charge_bomb/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if score @s AsaMatrix matches 1..50 if predicate asa_animator:random/020 as @e[distance=0..10,type=armor_stand,tag=BrachyParts,tag=HeadU] at @s run particle spit ~ ~1.4 ~ 0.1 0.1 0.1 0 1
execute if score @s AsaMatrix matches 9 run playsound block.honey_block.break master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 35 run playsound block.honey_block.break master @a ~ ~ ~ 2 0.5
