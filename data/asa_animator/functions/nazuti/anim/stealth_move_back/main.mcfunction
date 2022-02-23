# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_move_back/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/1
execute if entity @s[scores={AsaMatrix=9..14}] run tp @s ^0 ^-0.01666667 ^0
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/2
execute if entity @s[scores={AsaMatrix=15..22}] run tp @s ^0 ^1.2 ^0
execute if entity @s[scores={AsaMatrix=21..22}] run tp @s ^0 ^0.3 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/3
execute if entity @s[scores={AsaMatrix=23..30}] run tp @s ^0 ^0.2 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/4
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0.07142857 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/5
execute if entity @s[scores={AsaMatrix=38..46}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=47}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/6
execute if entity @s[scores={AsaMatrix=47..58}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/7
execute if entity @s[scores={AsaMatrix=59..66}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=67}] run function asa_animator:nazuti/anim/stealth_move_back/keyframes/8
execute if entity @s[scores={AsaMatrix=67..80}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:nazuti/anim/stealth_move_back/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=80}] run function asa_animator:nazuti/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=22}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=37}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:nazuti/anim/stealth_move_back/events/pos/set_pos_0
execute if entity @s[scores={AsaMatrix=20..37}] run function asa_animator:nazuti/anim/stealth_move_l/events/pos/offset
execute if entity @s[scores={AsaMatrix=37}] at @s run function asa_animator:nazuti/anim/stealth_move_back/events/pos/set_pos_1
execute if entity @s[scores={AsaMatrix=38..57}] run function asa_animator:nazuti/anim/stealth_move_l/events/pos/offset
execute at @s run function asa_animator:nazuti/manager/rotate

execute if entity @s[scores={AsaMatrix=58}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=58..}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=58..}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=68}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=74}] run function asa_animator:nazuti/manager/model/stealth_end

execute if entity @s[scores={AsaMatrix=14}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=58}] run tag @s remove IsFlying