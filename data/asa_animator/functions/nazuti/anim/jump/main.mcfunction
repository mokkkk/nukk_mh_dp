# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.04 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/jump/keyframes/1
execute if entity @s[scores={AsaMatrix=6..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/jump/keyframes/2
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/anim/jump/keyframes/3
execute if entity @s[scores={AsaMatrix=26..31}] run tp @s ^0 ^0.6666667 ^0
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:nazuti/anim/jump/keyframes/4
execute if entity @s[scores={AsaMatrix=32..37}] run tp @s ^0 ^-0.1333333 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:nazuti/anim/jump/keyframes/5
execute if entity @s[scores={AsaMatrix=38..43}] run tp @s ^0 ^-0.5333334 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:nazuti/anim/jump/keyframes/6
execute if entity @s[scores={AsaMatrix=44..53}] run tp @s ^0 ^0 ^0.1 ~0.5 ~
execute if entity @s[scores={AsaMatrix=54..60}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:nazuti/anim/jump/keyframes/7
execute if entity @s[scores={AsaMatrix=61..72}] run tp @s ^0 ^0.0125 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:nazuti/anim/jump/keyframes/8
execute if entity @s[scores={AsaMatrix=73..84}] run tp @s ^0 ^0.0125 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=85..}] run function asa_animator:nazuti/anim/jump/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:nazuti/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=20}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=31}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=1..19}] at @s run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=25}] at @s run function asa_animator:nazuti/anim/jump/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=26..43}] run function asa_animator:nazuti/anim/jump/events/pos/offset
execute if entity @s[scores={AsaMatrix=36..43}] run function asa_animator:nazuti/anim/jump/events/damage

execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=25}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=43}] run tag @s remove IsFlying
execute if entity @s[scores={AsaMatrix=43}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=54}] unless predicate asa_animator:nazuti/combo run function asa_animator:nazuti/manager/cancel_animation