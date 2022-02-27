# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/breath/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/breath/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.06 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/breath/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^-0.02857143 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:ruko/anim/breath/keyframes/2
execute if entity @s[scores={AsaMatrix=13..22}] run tp @s ^0 ^-0.01 ^-0.1
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:ruko/anim/breath/keyframes/3
execute if entity @s[scores={AsaMatrix=23..31}] run tp @s ^0 ^0.01111111 ^-0.2
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:ruko/anim/breath/keyframes/4
execute if entity @s[scores={AsaMatrix=32..37}] run tp @s ^0 ^-0.03333334 ^-0.05
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:ruko/anim/breath/keyframes/5
execute if entity @s[scores={AsaMatrix=38..39}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:ruko/anim/breath/keyframes/6
execute if entity @s[scores={AsaMatrix=40..52}] run tp @s ^0 ^0.007692308 ^-0.04615385
execute if entity @s[scores={AsaMatrix=53..}] run function asa_animator:ruko/anim/breath/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~0.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if entity @s[scores={AsaMatrix=1..19}] run function asa_animator:ruko/manager/rotate

execute if entity @s[scores={AsaMatrix=4}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=4}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=4}] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=6}] as @e[type=armor_stand,tag=RukoParts,tag=HeadU,distance=0..7] at @s run function asa_animator:ruko/anim/breath/events/attack_start

execute if entity @s[scores={AsaMatrix=6..31}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
execute if entity @s[scores={AsaMatrix=6..21}] as @e[type=marker,tag=RukoBreathPos,distance=0..7] run function asa_animator:ruko/anim/breath/events/attack_0
execute if entity @s[scores={AsaMatrix=22..32}] as @e[type=marker,tag=RukoBreathPos,distance=0..7] at @s run function asa_animator:ruko/anim/breath/events/attack_rotate
execute if entity @s[scores={AsaMatrix=33..35}] as @e[type=marker,tag=RukoBreathPos,distance=0..7] at @s run function asa_animator:ruko/anim/breath/events/attack_1
execute if entity @s[scores={AsaMatrix=40}] run kill @e[type=marker,tag=RukoBreathPos]