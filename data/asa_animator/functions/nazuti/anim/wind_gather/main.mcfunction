# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/wind_gather/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/wind_gather/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/anim/wind_gather/keyframes/1
execute if entity @s[scores={AsaMatrix=7..11}] run tp @s ^0 ^0.04 ^0
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:nazuti/anim/wind_gather/keyframes/2
execute if entity @s[scores={AsaMatrix=12..18}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:nazuti/anim/wind_gather/keyframes/3
execute if entity @s[scores={AsaMatrix=19..26}] run tp @s ^0 ^-0.025 ^-0.1 ~0.5 ~
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:nazuti/anim/wind_gather/keyframes/4
execute if entity @s[scores={AsaMatrix=27..36}] run tp @s ^0 ^0.02 ^0.1 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:nazuti/anim/wind_gather/keyframes/5
execute if entity @s[scores={AsaMatrix=37..47}] run tp @s ^0 ^-0.01818182 ^0
execute if entity @s[scores={AsaMatrix=48..}] run function asa_animator:nazuti/anim/wind_gather/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:nazuti/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:nazuti/manager/poison/move_start_g
execute if entity @s[scores={AsaMatrix=26}] as @a[distance=..6] run function mh_dp:player/knockback/start_wind