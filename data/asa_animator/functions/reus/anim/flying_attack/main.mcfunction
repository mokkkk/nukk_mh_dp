# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_attack/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_attack/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^-0.05 ^0.025
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_attack/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0.125 ^-0.0625 ~0.01 ~
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/flying_attack/keyframes/2
execute if entity @s[scores={AsaMatrix=17..19}] run tp @s ^0 ^0.09999999 ^-0.06666666
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:reus/anim/flying_attack/keyframes/3
execute if entity @s[scores={AsaMatrix=20..25}] run tp @s ^0 ^-0.3166667 ^0.25 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/flying_attack/keyframes/4
execute if entity @s[scores={AsaMatrix=26..38}] run tp @s ^0 ^0.1 ^-0.07692308
execute if entity @s[scores={AsaMatrix=39..}] run function asa_animator:reus/anim/flying_attack/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:reus/manager/rotate

execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=23}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=19..25}] unless entity @e[distance=..4,tag=ReusAttackTarget] facing entity @e[tag=ReusAttackTarget] feet run tp @s ^ ^ ^1.2
execute if entity @s[scores={AsaMatrix=23}] positioned ^ ^ ^1 run function asa_animator:reus/anim/flying_attack/events/damage