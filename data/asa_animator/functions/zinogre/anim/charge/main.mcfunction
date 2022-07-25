# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/charge/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/charge/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/charge/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/charge/keyframes/2
execute if entity @s[scores={AsaMatrix=11..18}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:zinogre/anim/charge/keyframes/3
execute if entity @s[scores={AsaMatrix=19..38}] run tp @s ^0 ^0.005 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:zinogre/anim/charge/keyframes/4
execute if entity @s[scores={AsaMatrix=39..48}] run tp @s ^0 ^-0.005 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:zinogre/anim/charge/keyframes/5
execute if entity @s[scores={AsaMatrix=49..58}] run tp @s ^0 ^-0.005 ^0
execute if entity @s[scores={AsaMatrix=59..}] run function asa_animator:zinogre/anim/charge/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=38}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=11}] run playsound block.beacon.activate master @a ~ ~ ~ 3 2
    execute if entity @s[scores={AsaMatrix=11}] run playsound block.beacon.activate master @a ~ ~ ~ 3 1.7
    execute if entity @s[scores={AsaMatrix=11..38}] run particle dust 1 1000000000 1000000000 1 ~ ~3 ~ 3 3 3 0 5
    execute if entity @s[scores={AsaMatrix=11..30}] positioned ^ ^3 ^1 run function asa_animator:zinogre/anim/charge/events/particle
    execute if entity @s[scores={AsaMatrix=48}] run particle flash ~ ~3 ~ 2 2 2 0 20