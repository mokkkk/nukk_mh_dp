# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/slash_swing_2/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.4
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^-0.02 ^-0.02 ^-0.2
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/2
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0.1 ^0.06 ^-0.2
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/4
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^-0.02 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/5
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^-0.06 ^-0.03999998 ^0 ~-3 ~
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/6
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/7
execute if entity @s[scores={AsaMatrix=46..50}] run tp @s ^-0.03 ^0.01999999 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/8
execute if entity @s[scores={AsaMatrix=51..55}] run tp @s ^-0.03 ^0.01999999 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/9
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0.06 ^-0.03999998 ^0 ~3 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/10
execute if entity @s[scores={AsaMatrix=61..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/11
execute if entity @s[scores={AsaMatrix=71..82}] run tp @s ^0 ^0.025 ^-0.025
execute if entity @s[scores={AsaMatrix=83}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/12
execute if entity @s[scores={AsaMatrix=83..92}] run tp @s ^0 ^-0.015 ^0.15
execute if entity @s[scores={AsaMatrix=93}] run function asa_animator:dyno/anim/slash_swing_2/keyframes/13
execute if entity @s[scores={AsaMatrix=93..100}] run tp @s ^0 ^-0.01875 ^0.0625
execute if entity @s[scores={AsaMatrix=101..}] run function asa_animator:dyno/anim/slash_swing_2/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if entity @s[scores={AsaMatrix=1..10}] run function asa_animator:dyno/manager/rotate
execute if entity @s[scores={AsaMatrix=46..50}] run function asa_animator:dyno/manager/rotate_fast
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=35}] run playsound entity.iron_golem.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=33}] run playsound entity.generic.explode master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:dyno/anim/slash_swing_l/events/particle
execute if entity @s[scores={AsaMatrix=35}] positioned ^1 ^ ^6 run function asa_animator:dyno/anim/slash_swing_l/events/damage

execute if entity @s[scores={AsaMatrix=60}] run playsound entity.iron_golem.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=58}] run playsound entity.generic.explode master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:dyno/anim/slash_swing_l/events/particle
execute if entity @s[scores={AsaMatrix=60}] positioned ^-1 ^ ^6 run function asa_animator:dyno/anim/slash_swing_l/events/damage

execute if entity @s[scores={AsaMatrix=21..30}] at @s unless entity @e[tag=DynoAttackTarget,distance=0..8] run tp @s ^ ^ ^0.8
execute if entity @s[scores={AsaMatrix=46..55}] at @s unless entity @e[tag=DynoAttackTarget,distance=0..8] run tp @s ^ ^ ^0.6