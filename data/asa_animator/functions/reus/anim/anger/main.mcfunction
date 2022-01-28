# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^-0.01 ^-0.03
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0 ^0.01428571 ^-0.05714285
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:reus/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=28..50}] run tp @s ^0 ^0.004347826 ^0.02608696
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:reus/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=51..60}] run tp @s ^0 ^-0.04 ^0.01
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:reus/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=61..70}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=71..}] run function asa_animator:reus/anim/anger/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:reus/manager/rotate
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=68}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=27..55}] run playsound entity.ravager.attack master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=27..50}] at @e[type=armor_stand,tag=ReusParts,tag=HeadU,distance=0..20] positioned ^ ^1.1 ^0.7 run particle flash ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=27..50}] positioned ^ ^ ^6 run particle block grass_block ~ ~ ~ 2 0.1 2 0 5
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:reus/anim/voice/events/damage