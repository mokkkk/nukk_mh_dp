# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/sp_attack_2/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/sp_attack_2/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/anim/sp_attack_2/keyframes/1
execute if entity @s[scores={AsaMatrix=7..10}] run tp @s ^0 ^0.05 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:nazuti/anim/sp_attack_2/keyframes/2
execute if entity @s[scores={AsaMatrix=11..14}] run tp @s ^0 ^-0.0125 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:nazuti/anim/sp_attack_2/keyframes/3
execute if entity @s[scores={AsaMatrix=15..36}] run tp @s ^0 ^0.004545454 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:nazuti/anim/sp_attack_2/keyframes/4
execute if entity @s[scores={AsaMatrix=37..46}] run tp @s ^0 ^-0.01 ^0
execute if entity @s[scores={AsaMatrix=47..}] run function asa_animator:nazuti/anim/sp_attack_2/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/manager/particle/step

execute if entity @s[scores={AsaMatrix=14}] positioned ^ ^6 ^2 rotated ~60 ~-35 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=16}] positioned ^ ^6 ^2 rotated ~0 ~-40 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=18}] positioned ^ ^6 ^2 rotated ~180 ~-35 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=20}] positioned ^ ^6 ^2 rotated ~240 ~-40 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=22}] positioned ^ ^6 ^2 rotated ~30 ~-40 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=24}] positioned ^ ^6 ^2 rotated ~300 ~-37 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=26}] positioned ^ ^6 ^2 rotated ~210 ~-42 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=28}] positioned ^ ^6 ^2 rotated ~330 ~-38 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=30}] positioned ^ ^6 ^2 rotated ~150 ~-50 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=32}] positioned ^ ^6 ^2 rotated ~120 ~-41 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=34}] positioned ^ ^6 ^2 rotated ~270 ~-40 run function asa_animator:nazuti/anim/breath_up/events/shot
execute if entity @s[scores={AsaMatrix=36}] positioned ^ ^6 ^2 rotated ~90 ~-40 run function asa_animator:nazuti/anim/breath_up/events/shot

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/manager/model/stealth_end