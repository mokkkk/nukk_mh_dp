# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_move_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^-0.01666667 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0.5833334 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^-0.125 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/3
execute if entity @s[scores={AsaMatrix=21..28}] run tp @s ^0 ^-0.3 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/4
execute if entity @s[scores={AsaMatrix=29..32}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:nazuti/anim/stealth_move_r/keyframes/5
execute if entity @s[scores={AsaMatrix=33..42}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=43..}] run function asa_animator:nazuti/anim/stealth_move_r/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:nazuti/manager/model/change_to_normal

execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:nazuti/manager/particle/step
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:nazuti/anim/stealth_move_r/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6..28}] run function asa_animator:nazuti/anim/stealth_move_l/events/pos/offset
execute at @s run function asa_animator:nazuti/manager/rotate

execute if entity @s[scores={AsaMatrix=29..}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=29..}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[tag=!IsAnmStealth,scores={AsaMatrix=1}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[tag=!IsAnmStealth,scores={AsaMatrix=5}] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/manager/model/stealth_invisible
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:nazuti/manager/model/stealth_end

execute if entity @s[scores={AsaMatrix=6}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=28}] run tag @s remove IsFlying