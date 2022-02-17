# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/press/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/press/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/press/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0 ^-0.1
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:nazuti/anim/press/keyframes/2
execute if entity @s[scores={AsaMatrix=13..22}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:nazuti/anim/press/keyframes/3
execute if entity @s[scores={AsaMatrix=23..34}] run tp @s ^0 ^-0.01666667 ^0
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:nazuti/anim/press/keyframes/4
execute if entity @s[scores={AsaMatrix=35..46}] run tp @s ^0 ^0.025 ^0
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:nazuti/anim/press/keyframes/5
execute if entity @s[scores={AsaMatrix=47..56}] run tp @s ^0 ^-0.03 ^0
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:nazuti/anim/press/keyframes/6
execute if entity @s[scores={AsaMatrix=57..63}] run tp @s ^0 ^-0.04285714 ^0
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:nazuti/anim/press/keyframes/7
execute if entity @s[scores={AsaMatrix=64..70}] run tp @s ^0 ^-0.007142854 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:nazuti/anim/press/keyframes/8
execute if entity @s[scores={AsaMatrix=71..78}] run tp @s ^0 ^-0.006250001 ^0
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:nazuti/anim/press/keyframes/9
execute if entity @s[scores={AsaMatrix=79..96}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=97}] run function asa_animator:nazuti/anim/press/keyframes/10
execute if entity @s[scores={AsaMatrix=97..104}] run tp @s ^0 ^0.01666666 ^0.01666667
execute if entity @s[scores={AsaMatrix=105}] run function asa_animator:nazuti/anim/press/keyframes/11
execute if entity @s[scores={AsaMatrix=105..112}] run tp @s ^0 ^0.02916668 ^0.01666667
execute if entity @s[scores={AsaMatrix=113}] run function asa_animator:nazuti/anim/press/keyframes/12
execute if entity @s[scores={AsaMatrix=113..120}] run tp @s ^0 ^0.01666666 ^0.01666666
execute if entity @s[scores={AsaMatrix=121..}] run function asa_animator:nazuti/anim/press/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=5}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=13..56}] at @s run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=13..56}] unless entity @e[tag=NazutiAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={AsaMatrix=57..63}] unless entity @e[tag=NazutiAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^0.7
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:nazuti/anim/press/events/damage
execute if entity @s[scores={AsaMatrix=97}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=5}] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=14}] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run function asa_animator:nazuti/manager/model/stealth_invisible
execute if entity @s[scores={AsaMatrix=46}] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=104}] if score #mhdp_nazuti_lv AsaMatrix matches 1.. run function asa_animator:nazuti/manager/model/stealth_end