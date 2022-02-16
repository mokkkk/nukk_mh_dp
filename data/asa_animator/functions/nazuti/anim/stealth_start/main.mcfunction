# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_start/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/stealth_start/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.02857143 ^-0.1
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:nazuti/anim/stealth_start/keyframes/1
execute if entity @s[scores={AsaMatrix=8..14}] run tp @s ^0 ^0 ^-0.2
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:nazuti/anim/stealth_start/keyframes/2
execute if entity @s[scores={AsaMatrix=15..24}] run tp @s ^0 ^0.01 ^-0.2
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:nazuti/anim/stealth_start/keyframes/3
execute if entity @s[scores={AsaMatrix=25..32}] run tp @s ^0 ^-0.0125 ^-0.1
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:nazuti/anim/stealth_start/keyframes/4
execute if entity @s[scores={AsaMatrix=33..47}] run tp @s ^0 ^0.01333333 ^-0.05
execute if entity @s[scores={AsaMatrix=48..}] run function asa_animator:nazuti/anim/stealth_start/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=14}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=32}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
function asa_animator:nazuti/manager/rotate

execute if entity @s[scores={AsaMatrix=12..24}] run particle poof ~ ~2 ~ 3 3 3 0.05 1 force
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:nazuti/manager/model/stealth_lucent
execute if entity @s[scores={AsaMatrix=25}] at @e[type=armor_stand,tag=NazutiParts,distance=..16] run particle poof ~ ~2 ~ 1 1 1 0.05 4 force
execute if entity @s[scores={AsaMatrix=25}] run playsound block.fire.extinguish master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:nazuti/manager/model/stealth_invisible
