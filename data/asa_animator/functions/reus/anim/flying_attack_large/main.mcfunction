# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_attack_large/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_attack_large/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^-0.05 ^0.025
execute if score @s AsaMatrix matches 9 run function asa_animator:reus/anim/flying_attack_large/keyframes/1
execute if score @s AsaMatrix matches 9..16 run tp @s ^-0.025 ^0.125 ^-0.0625 ~-1 ~
execute if score @s AsaMatrix matches 17 run function asa_animator:reus/anim/flying_attack_large/keyframes/2
execute if score @s AsaMatrix matches 17..20 run tp @s ^-0.025 ^0 ^0 ~1 ~
execute if score @s AsaMatrix matches 21 run function asa_animator:reus/anim/flying_attack_large/keyframes/3
execute if score @s AsaMatrix matches 21..26 run tp @s ^0.08333334 ^-0.1 ^0.2166667 ~1 ~
execute if score @s AsaMatrix matches 27 run function asa_animator:reus/anim/flying_attack_large/keyframes/4
execute if score @s AsaMatrix matches 27..34 run tp @s ^0.0125 ^0.125 ^0
execute if score @s AsaMatrix matches 35 run function asa_animator:reus/anim/flying_attack_large/keyframes/5
execute if score @s AsaMatrix matches 35..50 run tp @s ^-0.01875 ^0.02 ^-0.0625
execute if score @s AsaMatrix matches 51.. run function asa_animator:reus/anim/flying_attack_large/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if score @s AsaMatrix matches 1..8 run function asa_animator:reus/manager/rotate_fast
execute if score @s AsaMatrix matches 1..8 unless entity @e[distance=..4,tag=ReusAttackTarget] facing entity @e[tag=ReusAttackTarget] feet run tp @s ^ ^ ^0.6
execute if score @s AsaMatrix matches 6 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 23 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if score @s AsaMatrix matches 23..25 positioned ^ ^-1 ^2 run function asa_animator:reus/anim/flying_attack_large/events/damage