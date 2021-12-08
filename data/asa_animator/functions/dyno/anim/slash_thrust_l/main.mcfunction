# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_thrust_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0.01 ^-0.02 ~1 ~
execute if score @s AsaMatrix matches 6 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^0.02 ^-0.02
execute if score @s AsaMatrix matches 11 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^0.01 ^0
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/3
execute if score @s AsaMatrix matches 16..22 run tp @s ^0 ^0.04285714 ^0.02857143
execute if score @s AsaMatrix matches 23 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/4
execute if score @s AsaMatrix matches 23..29 run tp @s ^0 ^-0.01428571 ^0 ~-0.5 ~
execute if score @s AsaMatrix matches 30 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/5
execute if score @s AsaMatrix matches 30..39 run tp @s ^0 ^0 ^0 
execute if score @s AsaMatrix matches 40 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/6
execute if score @s AsaMatrix matches 40..50 run tp @s ^0 ^-0.009090909 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/7
execute if score @s AsaMatrix matches 51..52 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 53 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/8
execute if score @s AsaMatrix matches 53..60 run tp @s ^0 ^-0.006250001 ^0.1 ~0.5 ~
execute if score @s AsaMatrix matches 61 run function asa_animator:dyno/anim/slash_thrust_l/keyframes/9
execute if score @s AsaMatrix matches 61..69 run tp @s ^0 ^-0.02777778 ^0
execute if score @s AsaMatrix matches 70.. run function asa_animator:dyno/anim/slash_thrust_l/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1..10 run function asa_animator:dyno/manager/rotate

execute if score @s AsaMatrix matches 1 run playsound block.grass.hit master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 28 run playsound item.trident.throw master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 26 positioned ^2 ^ ^5 run function asa_animator:dyno/anim/slash_thrust_l/events/damage
execute if score @s AsaMatrix matches 29 positioned ^ ^ ^6 run function asa_animator:dyno/anim/slash_thrust_l/events/damage
execute if score @s AsaMatrix matches 29 positioned ^ ^ ^6 run particle block grass_block ~ ~ ~ 1 0.1 1 0 30
execute if entity @s[tag=IsHeatTail] if score @s AsaMatrix matches 29 positioned ^ ^ ^6 run particle lava ~ ~ ~ 1 0.1 1 0 10

execute if score @s AsaMatrix matches 16..30 at @s if entity @e[distance=0..6,tag=DynoAttackTarget] run tp @s ^ ^ ^-0.3
execute if score @s AsaMatrix matches 16..30 at @s unless entity @e[distance=6..8,tag=DynoAttackTarget] run tp @s ^ ^ ^0.2