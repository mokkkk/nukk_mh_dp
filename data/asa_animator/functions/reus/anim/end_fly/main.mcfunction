# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/end_fly/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/end_fly/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^-0.17 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/end_fly/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0.03000001 ^0.04
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/end_fly/keyframes/2
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^-0.1 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/end_fly/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^-0.12 ^0.08
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/end_fly/keyframes/4
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/anim/end_fly/keyframes/5
execute if entity @s[scores={AsaMatrix=36..50}] run tp @s ^0 ^0 ^-0.01333333
execute if entity @s[scores={AsaMatrix=51..}] run function asa_animator:reus/anim/end_fly/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/end_fly/events/set_pos
execute if entity @s[scores={AsaMatrix=1..30}] run function asa_animator:reus/anim/end_fly/events/offset

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=28}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:reus/manager/model/change_to_normal