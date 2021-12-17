# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/move_bite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/move_bite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^0.25
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:reia/anim/move_bite/keyframes/1
execute if entity @s[scores={AsaMatrix=7..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reia/anim/move_bite/keyframes/2
execute if entity @s[scores={AsaMatrix=11..16}] run tp @s ^0 ^0 ^0.7
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reia/anim/move_bite/keyframes/3
execute if entity @s[scores={AsaMatrix=17..22}] run tp @s ^0 ^0 ^0.3
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reia/anim/move_bite/keyframes/4
execute if entity @s[scores={AsaMatrix=23..40}] run tp @s ^0 ^0 ^-0.05555556
execute if entity @s[scores={AsaMatrix=41..}] run function asa_animator:reia/anim/move_bite/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=14}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2
execute if entity @s[scores={AsaMatrix=14..16}] positioned ^ ^1 ^5 run function asa_animator:reia/anim/move_bite/events/damage