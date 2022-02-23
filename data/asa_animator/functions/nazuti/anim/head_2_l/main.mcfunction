# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/head_2_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/head_2_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0.01428571 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:nazuti/anim/head_2_l/keyframes/1
execute if entity @s[scores={AsaMatrix=8..14}] run tp @s ^0 ^-0.01428571 ^0 ~-10 ~
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:nazuti/anim/head_2_l/keyframes/2
execute if entity @s[scores={AsaMatrix=15..25}] run tp @s ^0 ^0 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/anim/head_2_l/keyframes/3
execute if entity @s[scores={AsaMatrix=26..37}] run tp @s ^0 ^0 ^0.1 ~6 ~
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:nazuti/anim/head_2_l/keyframes/4
execute if entity @s[scores={AsaMatrix=38..45}] run tp @s ^0 ^0 ^0.5 ~6 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:nazuti/anim/head_2_l/keyframes/5
execute if entity @s[scores={AsaMatrix=46..55}] run tp @s ^0 ^0.01 ^0.1 ~3 ~
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:nazuti/anim/head_2_l/keyframes/6
execute if entity @s[scores={AsaMatrix=56..65}] run tp @s ^0 ^-0.01 ^0 ~3 ~
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:nazuti/anim/head_2_l/keyframes/7
execute if entity @s[scores={AsaMatrix=66..70}] run tp @s ^0 ^0 ^0.4 ~-6 ~
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:nazuti/anim/head_2_l/keyframes/8
execute if entity @s[scores={AsaMatrix=71..78}] run tp @s ^0 ^0 ^0.5 ~-6 ~
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:nazuti/anim/head_2_l/keyframes/9
execute if entity @s[scores={AsaMatrix=79..88}] run tp @s ^0 ^0.01 ^0.1 ~-3 ~
execute if entity @s[scores={AsaMatrix=89}] run function asa_animator:nazuti/anim/head_2_l/keyframes/10
execute if entity @s[scores={AsaMatrix=89..98}] run tp @s ^0 ^-0.01 ^0 ~-3 ~
execute if entity @s[scores={AsaMatrix=99}] run function asa_animator:nazuti/anim/head_2_l/keyframes/11
execute if entity @s[scores={AsaMatrix=99..108}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=109}] run function asa_animator:nazuti/anim/head_2_l/keyframes/12
execute if entity @s[scores={AsaMatrix=109..123}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=124..}] run function asa_animator:nazuti/anim/head_2_l/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1..7}] run function asa_animator:nazuti/manager/rotate_fast
execute if entity @s[scores={AsaMatrix=8}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=26..37}] run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=37}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=38..45}] at @e[type=armor_stand,tag=NazutiParts,tag=HeadU] run function asa_animator:nazuti/anim/head_l/events/damage
execute if entity @s[scores={AsaMatrix=65}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=56..65}] run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=71}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=71..78}] at @e[type=armor_stand,tag=NazutiParts,tag=HeadU] run function asa_animator:nazuti/anim/head_l/events/damage
execute if entity @s[scores={AsaMatrix=98}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:nazuti/manager/model/stealth_invisible
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:nazuti/manager/model/stealth_invisible
execute if entity @s[scores={AsaMatrix=88}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=98}] run function asa_animator:nazuti/manager/model/stealth_end

execute at @s if block ~ ~ ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~0.2 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~