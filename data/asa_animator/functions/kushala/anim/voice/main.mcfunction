# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:kushala/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=16..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:kushala/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=26..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:kushala/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=41..55}] run tp @s ^0 ^-0.01333333 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:kushala/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=56..60}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:kushala/anim/voice/keyframes/6
execute if entity @s[scores={AsaMatrix=61..72}] run tp @s ^0 ^0.01666667 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=73..}] run function asa_animator:kushala/anim/voice/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.glass.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:kushala/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=1..55}] run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=12..16}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=16..50}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.9
execute if entity @s[scores={AsaMatrix=16..50}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.1
execute if entity @s[scores={AsaMatrix=16..60}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=16..40}] positioned as @e[type=armor_stand,tag=KushalaParts,tag=HeadU] positioned ^ ^1.8 ^0.4 run particle flash ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=16..40}] run particle block grass_block ~ ~0.1 ~ 3 0 3 0 10
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:kushala/anim/voice/events/particle