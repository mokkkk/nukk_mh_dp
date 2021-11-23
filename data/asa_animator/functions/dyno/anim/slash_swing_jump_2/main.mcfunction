# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_swing_jump_2/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^-0.02 ^-0.02 ^-0.4
execute if score @s AsaMatrix matches 6 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^-0.01 ^-0.2
execute if score @s AsaMatrix matches 11 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^0.83 ^0.04
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/3
execute if score @s AsaMatrix matches 16..23 run tp @s ^0.05 ^0.08749998 ^-0.2125
execute if score @s AsaMatrix matches 24 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/4
execute if score @s AsaMatrix matches 24..29 run tp @s ^-0.025 ^-0.5583333 ^0
execute if score @s AsaMatrix matches 30 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/5
execute if score @s AsaMatrix matches 30..35 run tp @s ^-0.025 ^-0.225 ^0 ~-2 ~
execute if score @s AsaMatrix matches 36 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/6
execute if score @s AsaMatrix matches 36..45 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/7
execute if score @s AsaMatrix matches 46..50 run tp @s ^-0.03 ^0.01999999 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/8
execute if score @s AsaMatrix matches 51..55 run tp @s ^-0.03 ^0.01999999 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/9
execute if score @s AsaMatrix matches 56..60 run tp @s ^0.06 ^-0.03999998 ^0 ~2 ~
execute if score @s AsaMatrix matches 61 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/10
execute if score @s AsaMatrix matches 61..75 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 76 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/11
execute if score @s AsaMatrix matches 76..87 run tp @s ^0 ^0.025 ^0.05833334
execute if score @s AsaMatrix matches 88 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/12
execute if score @s AsaMatrix matches 88..97 run tp @s ^0 ^-0.015 ^0.05
execute if score @s AsaMatrix matches 98 run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/13
execute if score @s AsaMatrix matches 98..105 run tp @s ^0 ^-0.01875 ^0.0625
execute if score @s AsaMatrix matches 106.. run function asa_animator:dyno/anim/slash_swing_jump_2/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1..9 run function asa_animator:dyno/manager/rotate
execute if score @s AsaMatrix matches 46..50 run function asa_animator:dyno/manager/rotate
execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if score @s AsaMatrix matches 10 run function asa_animator:dyno/manager/particle/jump
execute if score @s AsaMatrix matches 10 run function asa_animator:dyno/anim/slash_swing_jump_l/events/pos/set_pos
execute if score @s AsaMatrix matches 11..35 run function asa_animator:dyno/anim/slash_swing_jump_l/events/pos/offset

execute if score @s AsaMatrix matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if score @s AsaMatrix matches 35 run playsound entity.iron_golem.death master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 33 run playsound entity.generic.explode master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 34 run function asa_animator:dyno/anim/slash_swing_l/events/particle
execute if score @s AsaMatrix matches 35 positioned ^1 ^ ^6 run function asa_animator:dyno/anim/slash_swing_l/events/damage

execute if score @s AsaMatrix matches 60 run playsound entity.iron_golem.death master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 58 run playsound entity.generic.explode master @a ~ ~ ~ 3 0.5
execute if score @s AsaMatrix matches 59 run function asa_animator:dyno/anim/slash_swing_l/events/particle
execute if score @s AsaMatrix matches 60 positioned ^-1 ^ ^6 run function asa_animator:dyno/anim/slash_swing_l/events/damage

execute if score @s AsaMatrix matches 21..30 at @s unless entity @e[distance=0..8,tag=DynoAttackTarget] run tp @s ^ ^ ^0.8
execute if score @s AsaMatrix matches 46..55 at @s unless entity @e[distance=0..8,tag=DynoAttackTarget] run tp @s ^ ^ ^0.6