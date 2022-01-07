# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/start_dash/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/start_dash/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.04285714 ^-0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:diablos/anim/start_dash/keyframes/1
execute if entity @s[scores={AsaMatrix=8..20}] run tp @s ^0 ^0 ^-0.01538462
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/start_dash/keyframes/2
execute if entity @s[scores={AsaMatrix=21..27}] run tp @s ^0 ^0.007142859 ^-0.01428571
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:diablos/anim/start_dash/keyframes/3
execute if entity @s[scores={AsaMatrix=28..32}] run tp @s ^0 ^0.05 ^0.1
execute if entity @s[scores={AsaMatrix=33..}] run function asa_animator:diablos/anim/start_dash/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 敵を向く
execute if entity @s[scores={AsaMatrix=1..32}] run function asa_animator:diablos/manager/rotate

# 突進位置決定
execute if entity @s[scores={AsaMatrix=32}] run summon marker ^ ^ ^10 {Tags:["DiablosDashTarget"]}
execute if entity @s[scores={AsaMatrix=32}] positioned as @e[tag=DiablosAttackTarget] rotated ~ 0 positioned ^ ^ ^3 run tp @e[type=marker,tag=DiablosDashTarget] ~ ~ ~

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7