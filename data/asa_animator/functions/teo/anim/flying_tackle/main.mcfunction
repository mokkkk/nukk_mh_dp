# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_tackle/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_tackle/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^-0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:teo/anim/flying_tackle/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0.5 ^0.04
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:teo/anim/flying_tackle/keyframes/2
execute if entity @s[scores={AsaMatrix=13..21}] run tp @s ^0 ^ ^-0.01111111
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:teo/anim/flying_tackle/keyframes/3
execute if entity @s[scores={AsaMatrix=22..28}] run tp @s ^0 ^-0.1 ^0.01428571
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:teo/anim/flying_tackle/keyframes/4
execute if entity @s[scores={AsaMatrix=29..43}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:teo/anim/flying_tackle/keyframes/5
execute if entity @s[scores={AsaMatrix=44..50}] run tp @s ^0 ^0.02857143 ^0 ~9 ~
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:teo/anim/flying_tackle/keyframes/6
execute if entity @s[scores={AsaMatrix=51..58}] run tp @s ^0.025 ^-0.025 ^0 ~9 ~
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:teo/anim/flying_tackle/keyframes/7
execute if entity @s[scores={AsaMatrix=59..65}] run tp @s ^-0.01818182 ^0 ^0 ~7 ~
execute if entity @s[scores={AsaMatrix=66..69}] run tp @s ^-0.01818182 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=70..}] run function asa_animator:teo/anim/flying_tackle/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..21}] run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=28..43}] run tp @s ^ ^ ^1.3
execute if entity @s[scores={AsaMatrix=28..43}] positioned ^ ^ ^2 run function asa_animator:teo/anim/jump/events/damage

execute if entity @s[scores={AsaMatrix=28..43}] at @s run tp @s ~ ~4 ~
execute if entity @s[scores={AsaMatrix=28..43}] at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=28..43}] at @s run tp @s ~ ~0.75 ~

execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:teo/anim/flying_tackle/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=44..50}] run function asa_animator:teo/anim/flying_tackle/events/pos/offset

execute if entity @s[scores={AsaMatrix=51..58}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=51..}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=51..}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=41}] run summon marker ~ ~ ~ {Tags:["TeoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=41}] run tp @e[type=marker,tag=TeoMoveRotate,distance=0..3] ~ ~ ~ ~ 0
execute if entity @s[scores={AsaMatrix=51..60}] at @s rotated as @e[type=marker,tag=TeoMoveRotate] run tp @s ^ ^ ^0.4
execute if entity @s[scores={AsaMatrix=61..}] at @s rotated as @e[type=marker,tag=TeoMoveRotate] run tp @s ^ ^ ^0.1

# 炎纏いlv1-
    execute if entity @s[tag=IsFire,scores={AsaMatrix=51..58}] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~ ~ 2 0.1 2 0 5