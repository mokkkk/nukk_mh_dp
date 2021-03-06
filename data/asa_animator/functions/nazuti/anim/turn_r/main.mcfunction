# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/anim/turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:nazuti/anim/turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^0.04 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/anim/turn_r/keyframes/4
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^-0.04 ^0
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:nazuti/anim/turn_r/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=16..20}] run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=21..}] run function asa_animator:nazuti/manager/rotate_fast
execute if entity @s[scores={AsaMatrix=16}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=21}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7