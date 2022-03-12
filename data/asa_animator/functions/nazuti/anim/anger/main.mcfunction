# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/anger/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/anger/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/anim/anger/keyframes/1
execute if entity @s[scores={AsaMatrix=7..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/anger/keyframes/2
execute if entity @s[scores={AsaMatrix=21..26}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:nazuti/anim/anger/keyframes/3
execute if entity @s[scores={AsaMatrix=27..30}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:nazuti/anim/anger/keyframes/4
execute if entity @s[scores={AsaMatrix=31..36}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:nazuti/anim/anger/keyframes/5
execute if entity @s[scores={AsaMatrix=37..47}] run tp @s ^0 ^0.009090909 ^0
execute if entity @s[scores={AsaMatrix=48..}] run function asa_animator:nazuti/anim/anger/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=30}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7