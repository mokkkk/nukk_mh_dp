# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_tornado/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_tornado/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^-0.0625 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:kushala/anim/flying_tornado/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0.075 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:kushala/anim/flying_tornado/keyframes/2
execute if entity @s[scores={AsaMatrix=17..31}] run tp @s ^0 ^0.01333333 ^-0.006666667
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:kushala/anim/flying_tornado/keyframes/3
execute if entity @s[scores={AsaMatrix=32..46}] run tp @s ^0 ^0.01333333 ^-0.006666667
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:kushala/anim/flying_tornado/keyframes/4
execute if entity @s[scores={AsaMatrix=47..54}] run tp @s ^0 ^-0.075 ^0.0125
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:kushala/anim/flying_tornado/keyframes/5
execute if entity @s[scores={AsaMatrix=55..62}] run tp @s ^0 ^-0.075 ^0.0125
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:kushala/anim/flying_tornado/keyframes/6
execute if entity @s[scores={AsaMatrix=63..74}] run tp @s ^0 ^0.05833333 ^0
execute if entity @s[scores={AsaMatrix=75..}] run function asa_animator:kushala/anim/flying_tornado/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=62}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=..15}] run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=12..16}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=16..45}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.9
execute if entity @s[scores={AsaMatrix=16..45}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.1
execute if entity @s[scores={AsaMatrix=16..55}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=16..35}] run function asa_animator:kushala/anim/flying_tornado/events/particle
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:kushala/anim/flying_tornado/events/shot