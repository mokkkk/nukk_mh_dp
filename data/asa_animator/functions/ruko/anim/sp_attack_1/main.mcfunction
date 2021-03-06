# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/sp_attack_1/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0.01428571 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/2
execute if entity @s[scores={AsaMatrix=13..18}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/3
execute if entity @s[scores={AsaMatrix=19..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/4
execute if entity @s[scores={AsaMatrix=26..31}] run tp @s ^0 ^-0.03333334 ^0
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/5
execute if entity @s[scores={AsaMatrix=32..36}] run tp @s ^0 ^0.04 ^-0.04
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/6
execute if entity @s[scores={AsaMatrix=37..41}] run tp @s ^0 ^0.1 ^0.04
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/7
execute if entity @s[scores={AsaMatrix=42..46}] run tp @s ^0 ^0.8 ^0
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/8
execute if entity @s[scores={AsaMatrix=47..51}] run tp @s ^0 ^0.4 ^0
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/9
execute if entity @s[scores={AsaMatrix=52..76}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=77}] run function asa_animator:ruko/anim/sp_attack_1/keyframes/10
execute if entity @s[scores={AsaMatrix=77..86}] run tp @s ^0 ^-0.25 ^0
execute if entity @s[scores={AsaMatrix=87..}] run function asa_animator:ruko/anim/sp_attack_1/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=31}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=36}] run tag @s add IsFlying

execute if entity @s[scores={AsaMatrix=7..20}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.7
execute if entity @s[scores={AsaMatrix=7..20}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.8
execute if entity @s[scores={AsaMatrix=7..20}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=7..20}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6


execute if entity @s[scores={AsaMatrix=55}] run summon lightning_bolt ~ ~100 ~
execute if entity @s[scores={AsaMatrix=61}] run summon lightning_bolt ~ ~100 ~
execute if entity @s[scores={AsaMatrix=48}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=48}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=48}] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=51..76}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
execute if entity @s[scores={AsaMatrix=51..76}] positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU] positioned ^ ^1.4 ^ rotated ~ -90 run function asa_animator:ruko/anim/sp_attack_1/events/particle
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:ruko/anim/sp_attack_1/events/meteo/set

execute if entity @s[scores={AsaMatrix=..76}] positioned ^ ^3 ^ run particle dust 0.314 0 0 3 ~ ~ ~ 3 3 3 0 3
execute if entity @s[scores={AsaMatrix=..76}] positioned ^ ^3 ^ run particle dust 0.592 0.243 0.243 3 ~ ~ ~ 3 3 3 0 4