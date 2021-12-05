# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/hook_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/hook_l/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0.03333334 ^-0.08333334 ~-1 ~
execute if score @s AsaMatrix matches 7 run function asa_animator:brachy/anim/hook_l/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^0 ^0 ^0 ~-1 ~
execute if score @s AsaMatrix matches 13 run function asa_animator:brachy/anim/hook_l/keyframes/2
execute if score @s AsaMatrix matches 13..16 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 17 run function asa_animator:brachy/anim/hook_l/keyframes/3
execute if score @s AsaMatrix matches 17..21 run tp @s ^0 ^-0.06 ^0.1 ~1 ~
execute if score @s AsaMatrix matches 22 run function asa_animator:brachy/anim/hook_l/keyframes/4
execute if score @s AsaMatrix matches 22..24 run tp @s ^0.06666667 ^0.06666667 ^0.06666667 ~3 ~
execute if score @s AsaMatrix matches 25 run function asa_animator:brachy/anim/hook_l/keyframes/5
execute if score @s AsaMatrix matches 25..38 run tp @s ^-0.01428571 ^-0.01428571 ^-0.01428571 ~-0.5 ~
execute if score @s AsaMatrix matches 39 run function asa_animator:brachy/anim/hook_l/keyframes/6
execute if score @s AsaMatrix matches 39..50 run tp @s ^0 ^0.008333334 ^-0.04166667 ~-0.5 ~
execute if score @s AsaMatrix matches 51.. run function asa_animator:brachy/anim/hook_l/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 1..12 if entity @e[distance=0..5,tag=BrachyAttackTarget] at @s run tp @s ^ ^ ^-0.2
execute if score @s AsaMatrix matches 16..21 unless entity @e[distance=0..4,tag=BrachyAttackTarget] at @s run tp @s ^ ^ ^0.3
execute if score @s AsaMatrix matches 17..21 run function asa_animator:brachy/manager/rotate_fast

execute if score @s AsaMatrix matches 22 positioned ^0.5 ^ ^4 run function asa_animator:brachy/anim/hook_l/events/damage
execute unless predicate asa_animator:brachy/combo if score @s AsaMatrix matches 30 run function asa_animator:brachy/manager/cancel_animation