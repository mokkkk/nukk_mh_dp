# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/destroy_body/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/destroy_body/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.015 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/destroy_body/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.015 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:nazuti/anim/destroy_body/keyframes/2
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^-0.003333333 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/anim/destroy_body/keyframes/3
execute if entity @s[scores={AsaMatrix=26..40}] run tp @s ^0 ^0.01333333 ^0
execute if entity @s[scores={AsaMatrix=41..}] run function asa_animator:nazuti/anim/destroy_body/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=11}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7