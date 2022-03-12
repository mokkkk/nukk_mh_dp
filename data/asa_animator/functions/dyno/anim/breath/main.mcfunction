# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/breath/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:dyno/anim/breath/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.06
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:dyno/anim/breath/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.01 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:dyno/anim/breath/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:dyno/anim/breath/keyframes/3
execute if entity @s[scores={AsaMatrix=16..22}] run tp @s ^0 ^0 ^0.05714286
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:dyno/anim/breath/keyframes/4
execute if entity @s[scores={AsaMatrix=23..29}] run tp @s ^0 ^0.01428571 ^-0.007142856
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:dyno/anim/breath/keyframes/5
execute if entity @s[scores={AsaMatrix=30..37}] run tp @s ^0 ^-0.0125 ^-0.006250001
execute if entity @s[scores={AsaMatrix=38..}] run function asa_animator:dyno/anim/breath/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if entity @s[scores={AsaMatrix=1..10}] run function asa_animator:dyno/manager/rotate

execute if entity @s[scores={AsaMatrix=11}] run summon marker ^ ^0.7 ^8 {Tags:["DynoBreathTarget"]}
execute if entity @s[scores={AsaMatrix=11}] unless entity @e[tag=DynoAttackTarget,distance=0..8] at @e[tag=DynoAttackTarget,limit=1] run tp @e[type=marker,tag=DynoBreathTarget] ~ ~ ~
execute if entity @s[scores={AsaMatrix=14}] run playsound entity.iron_golem.hurt master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=15}] positioned ^ ^2 ^6 run function asa_animator:dyno/anim/breath/events/shot