# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..12}] run tp @s ^0 ^0.008333334 ^-0.04166667
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:narga/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^-0.025 ^0.04375
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:narga/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0.035 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=31..32}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:narga/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=33..38}] run tp @s ^0 ^-0.008333333 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:narga/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=39..57}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:narga/anim/voice/keyframes/6
execute if entity @s[scores={AsaMatrix=58..70}] run tp @s ^0 ^-0.003846154 ^-0.003846154
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:narga/anim/voice/keyframes/7
execute if entity @s[scores={AsaMatrix=71..76}] run tp @s ^0 ^-0.008333334 ^0.01666667
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:narga/anim/voice/keyframes/8
execute if entity @s[scores={AsaMatrix=84..100}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=84..}] run function asa_animator:narga/anim/voice/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=39}] positioned ^ ^ ^5.5 run function asa_animator:narga/anim/voice/events/particle
execute if entity @s[scores={AsaMatrix=39}] positioned ^ ^ ^5.5 run function asa_animator:narga/anim/voice/events/damage
execute if entity @s[scores={AsaMatrix=39..45}] positioned ^ ^0.1 ^5.5 run particle flash ~ ~ ~ 0 0 0 0 1

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=21}] run playsound block.grass.step master @a ~ ~ ~ 3 1

execute if entity @s[scores={AsaMatrix=39..44}] run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=49..54}] run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 3 0.8
execute if entity @s[scores={AsaMatrix=69..74}] run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 3 0.8
execute if entity @s[scores={AsaMatrix=39..84}] run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 3 0.6
execute if entity @s[scores={AsaMatrix=39..84}] run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 3 0.5