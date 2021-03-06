# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/claw_dragon_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/1
execute if entity @s[scores={AsaMatrix=6..6}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/2
execute if entity @s[scores={AsaMatrix=7..13}] run tp @s ^0 ^0.5714286 ^-0.1428571
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/3
execute if entity @s[scores={AsaMatrix=14..23}] run tp @s ^0 ^0.00999999 ^-0.04
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/4
execute if entity @s[scores={AsaMatrix=24..29}] run tp @s ^0 ^ ^
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/5
execute if entity @s[scores={AsaMatrix=30..45}] run tp @s ^0 ^-0.00625 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/6
execute if entity @s[scores={AsaMatrix=46..52}] run tp @s ^0 ^0.007142857 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:ruko/anim/claw_dragon_l/keyframes/7
execute if entity @s[scores={AsaMatrix=53..60}] run tp @s ^0 ^0.00625 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:ruko/anim/claw_dragon_l/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=6..23}] positioned ^ ^2 ^4 run particle dust 0.314 0 0 1.3 ~ ~ ~ 1 1 1 0 5
execute if entity @s[scores={AsaMatrix=6..23}] positioned ^ ^2 ^4 run particle dust 0.592 0.243 0.243 1.3 ~ ~ ~ 1 1 1 0 5

execute if entity @s[scores={AsaMatrix=6..9}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=6..9}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=6..9}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=6..9}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6


execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:ruko/manager/particle/step

execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:ruko/anim/claw_dragon_l/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=24..29}] run function asa_animator:ruko/anim/claw_dragon_l/events/pos/offset

execute if entity @s[scores={AsaMatrix=30}] positioned ^ ^0.5 ^5.5 run function asa_animator:ruko/anim/claw_dragon_l/events/damage

execute if entity @s[scores={AsaMatrix=6}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=29}] run tag @s remove IsFlying