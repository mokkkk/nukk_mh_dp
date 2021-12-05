# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/head/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/head/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0.04 ^-0.04
execute if score @s AsaMatrix matches 6 run function asa_animator:brachy/anim/head/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^-0.04 ^-0.04
execute if score @s AsaMatrix matches 11 run function asa_animator:brachy/anim/head/keyframes/2
execute if score @s AsaMatrix matches 11..14 run tp @s ^0 ^-0.05 ^0.25
execute if score @s AsaMatrix matches 15 run function asa_animator:brachy/anim/head/keyframes/3
execute if score @s AsaMatrix matches 15..18 run tp @s ^0 ^0.05 ^0.25
execute if score @s AsaMatrix matches 19 run function asa_animator:brachy/anim/head/keyframes/4
execute if score @s AsaMatrix matches 19..24 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 25 run function asa_animator:brachy/anim/head/keyframes/5
execute if score @s AsaMatrix matches 25..30 run tp @s ^0 ^0 ^0.1 ~1 ~
execute if score @s AsaMatrix matches 31.. run function asa_animator:brachy/anim/head/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 1..3 run function asa_animator:brachy/manager/rotate

execute if score @s AsaMatrix matches 11..16 run tp @s ^ ^ ^1
execute if score @s AsaMatrix matches 17..19 run tp @s ^ ^ ^0.5
execute if score @s AsaMatrix matches 20..24 run tp @s ^ ^ ^0.3
execute if score @s AsaMatrix matches 15 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
function asa_animator:brachy/manager/ground

execute if score @s AsaMatrix matches 15..18 positioned ^ ^ ^2 run function asa_animator:brachy/anim/head/events/damage