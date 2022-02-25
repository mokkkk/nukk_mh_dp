# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0.03 ^0.01 ~0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:ruko/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:ruko/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=16..22}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:ruko/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=23..27}] run tp @s ^0 ^-0.02 ^-0.02
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:ruko/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=28..42}] run tp @s ^0 ^0 ^0 ~0.2 ~
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:ruko/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=43..57}] run tp @s ^0 ^-0.01333333 ^-0.05 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=58..}] run function asa_animator:ruko/anim/voice/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=27..42}] positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU] positioned ^ ^1.8 ^0.4 run particle flash ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=27..42}] run particle block grass_block ~ ~0.1 ~ 3 0 3 0 10

execute if entity @s[scores={AsaMatrix=27..35}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=27..35}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=27..35}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=27..35}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6
execute if entity @s[scores={AsaMatrix=23..27}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5

execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:ruko/anim/voice/events/damage