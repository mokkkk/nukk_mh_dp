# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/bjb_land/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/bjb_land/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0.08
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/bjb_land/keyframes/1
execute if entity @s[scores={AsaMatrix=6..8}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:kushala/anim/bjb_land/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0.01875 ^-0.075
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:kushala/anim/bjb_land/keyframes/3
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0.009375 ^-0.0375
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:kushala/anim/bjb_land/keyframes/4
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0.8 ^-0.6
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:kushala/anim/bjb_land/keyframes/5
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:kushala/anim/bjb_land/keyframes/6
execute if entity @s[scores={AsaMatrix=36..43}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:kushala/anim/bjb_land/keyframes/7
execute if entity @s[scores={AsaMatrix=44..53}] run tp @s ^0 ^0 ^-0.2
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:kushala/anim/bjb_land/keyframes/8
execute if entity @s[scores={AsaMatrix=54..63}] run tp @s ^0 ^0 ^0.02
execute if entity @s[scores={AsaMatrix=64..}] run function asa_animator:kushala/anim/bjb_land/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=21}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=44}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:kushala/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=1..4}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.9
execute if entity @s[scores={AsaMatrix=1..4}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:kushala/manager/particle/step

execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:kushala/anim/bjb_land/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=26..43}] run function asa_animator:kushala/anim/bjb_land/events/pos/offset

execute if entity @s[scores={AsaMatrix=23}] positioned ^ ^6 ^5 run function asa_animator:kushala/anim/bjb_land/events/shot