# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/slash_swing_jump_2/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^-0.02 ^-0.02 ^-0.4
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.01 ^-0.2
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0.83 ^0.04
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/3
execute if entity @s[scores={AsaMatrix=16..23}] run tp @s ^0.05 ^0.08749998 ^-0.2125
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/4
execute if entity @s[scores={AsaMatrix=24..29}] run tp @s ^-0.025 ^-0.5583333 ^0
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/5
execute if entity @s[scores={AsaMatrix=30..35}] run tp @s ^-0.025 ^-0.225 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/6
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/7
execute if entity @s[scores={AsaMatrix=46..50}] run tp @s ^-0.03 ^0.01999999 ^0
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/8
execute if entity @s[scores={AsaMatrix=51..55}] run tp @s ^-0.03 ^0.01999999 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/9
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0.06 ^-0.03999998 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/10
execute if entity @s[scores={AsaMatrix=61..75}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/11
execute if entity @s[scores={AsaMatrix=76..87}] run tp @s ^0 ^0.025 ^0.05833334
execute if entity @s[scores={AsaMatrix=88}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/12
execute if entity @s[scores={AsaMatrix=88..97}] run tp @s ^0 ^-0.015 ^0.05
execute if entity @s[scores={AsaMatrix=98}] run function asa_animator:dyno/anim/slash_swing_jump_2/keyframes/13
execute if entity @s[scores={AsaMatrix=98..105}] run tp @s ^0 ^-0.01875 ^0.0625
execute if entity @s[scores={AsaMatrix=106..}] run function asa_animator:dyno/anim/slash_swing_jump_2/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if entity @s[scores={AsaMatrix=1..9}] run function asa_animator:dyno/manager/rotate
execute if entity @s[scores={AsaMatrix=46..50}] run function asa_animator:dyno/manager/rotate
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:dyno/manager/particle/jump
execute if entity @s[scores={AsaMatrix=10}] run function asa_animator:dyno/anim/slash_swing_jump_l/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=11..35}] run function asa_animator:dyno/anim/slash_swing_jump_l/events/pos/offset

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