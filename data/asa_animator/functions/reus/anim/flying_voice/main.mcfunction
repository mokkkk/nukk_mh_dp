# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^-0.1375 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_voice/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0.1375 ^0.025
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/flying_voice/keyframes/2
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0 ^-0.075 ^-0.0125
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/flying_voice/keyframes/3
execute if entity @s[scores={AsaMatrix=25..34}] run tp @s ^0 ^-0.015 ^-0.0175
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:reus/anim/flying_voice/keyframes/4
execute if entity @s[scores={AsaMatrix=35..46}] run tp @s ^0 ^0.0375 ^0.002083333
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:reus/anim/flying_voice/keyframes/5
execute if entity @s[scores={AsaMatrix=47..55}] run tp @s ^0 ^0.03333334 ^0.005555556
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:reus/anim/flying_voice/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=24}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=24..45}] run playsound entity.ravager.attack master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=24..40}] at @e[type=armor_stand,tag=ReusParts,tag=HeadU,distance=0..20] positioned ^ ^1.1 ^0.7 run particle flash ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:reus/anim/voice/events/damage