# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/press/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/press/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/press/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:ruko/anim/press/keyframes/2
execute if entity @s[scores={AsaMatrix=16..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:ruko/anim/press/keyframes/3
execute if entity @s[scores={AsaMatrix=36..40}] run tp @s ^0 ^0.32 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:ruko/anim/press/keyframes/4
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^-0.16 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:ruko/anim/press/keyframes/5
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^-0.06 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:ruko/anim/press/keyframes/6
execute if entity @s[scores={AsaMatrix=61..80}] run tp @s ^0 ^0.005 ^0.015 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:ruko/anim/press/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1..25}] run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=6..15}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=6..15}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=6..15}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=6..15}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6
execute if entity @s[scores={AsaMatrix=6..35}] run particle dust 0.592 0.243 0.243 2 ^ ^3 ^2 2 2 2 0.1 3

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=26}] at @s run function asa_animator:ruko/anim/press/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=36..45}] run function asa_animator:ruko/anim/press/events/pos/offset

execute if entity @s[scores={AsaMatrix=46}] positioned ^ ^ ^1 run function asa_animator:ruko/anim/press/events/damage

execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:ruko/anim/press/events/change

execute if entity @s[scores={AsaMatrix=35}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=45}] run tag @s remove IsFlying