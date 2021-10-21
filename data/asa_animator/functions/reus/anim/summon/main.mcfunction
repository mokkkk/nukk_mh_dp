# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_stay/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_stay/keyframes/0
execute if score @s AsaMatrix matches 1..12 run tp @s ^0 ^-0.5 ^0
execute if score @s AsaMatrix matches 13 run function asa_animator:reus/anim/flying_stay/keyframes/1
execute if score @s AsaMatrix matches 13..24 run tp @s ^0 ^-0.5 ^0.01666667
execute if score @s AsaMatrix matches 25 run function asa_animator:reus/anim/flying_stay/keyframes/2
execute if score @s AsaMatrix matches 25..36 run tp @s ^0 ^-0.5 ^-0.008333334
execute if score @s AsaMatrix matches 37 run function asa_animator:reus/anim/flying_stay/keyframes/3
execute if score @s AsaMatrix matches 37..48 run tp @s ^0 ^-0.5 ^-0.008333334
execute if score @s AsaMatrix matches 49 run function asa_animator:reus/anim/flying_stay/keyframes/0
execute if score @s AsaMatrix matches 49..60 run tp @s ^0 ^-0.5 ^0
execute if score @s AsaMatrix matches 61 run function asa_animator:reus/anim/flying_stay/keyframes/1
execute if score @s AsaMatrix matches 61..72 run tp @s ^0 ^-0.5 ^0.01666667
execute if score @s AsaMatrix matches 73 run function asa_animator:reus/anim/flying_stay/keyframes/2
execute if score @s AsaMatrix matches 73..84 run tp @s ^0 ^-0.5 ^-0.008333334
execute if score @s AsaMatrix matches 85 run function asa_animator:reus/anim/flying_stay/keyframes/3
execute if score @s AsaMatrix matches 85..96 run tp @s ^0 ^-0.5 ^-0.008333334
execute if score @s AsaMatrix matches 97.. run function asa_animator:reus/anim/summon/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if score @s AsaMatrix matches 10 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 34 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 58 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 82 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7