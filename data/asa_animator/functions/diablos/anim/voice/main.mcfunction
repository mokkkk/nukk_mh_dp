# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..15}] run tp @s ^0 ^-0.006666667 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=16..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:diablos/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:diablos/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:diablos/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=46..55}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:diablos/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=56..62}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:diablos/anim/voice/keyframes/6
execute if entity @s[scores={AsaMatrix=63..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:diablos/anim/voice/keyframes/7
execute if entity @s[scores={AsaMatrix=71..80}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:diablos/anim/voice/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=16..62}] at @e[type=armor_stand,tag=DiablosParts,tag=HeadU,distance=0..20] positioned ^ ^1.5 ^0.7 run particle flash ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=16..62}] run particle block sand ~ ~ ~ 3 0.1 3 0 10

execute if entity @s[scores={AsaMatrix=5}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=16..45}] run playsound entity.zombie_horse.death master @a ~ ~ ~ 3 1.1 0.05
execute if entity @s[scores={AsaMatrix=16..45}] run playsound entity.zombie_horse.death master @a ~ ~ ~ 3 0.9 0.05
execute if entity @s[scores={AsaMatrix=16..20}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.6 0.05
execute if entity @s[scores={AsaMatrix=16..20}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5 0.05

execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:diablos/anim/voice/events/damage