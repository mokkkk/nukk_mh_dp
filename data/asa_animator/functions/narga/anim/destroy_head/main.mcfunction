# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/destroy_head/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/destroy_head/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^-0.06 ^0.06 ^-0.12
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/destroy_head/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^-0.02857143 ^-0.06428572 ^-0.1285714
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:narga/anim/destroy_head/keyframes/2
execute if entity @s[scores={AsaMatrix=13..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:narga/anim/destroy_head/keyframes/3
execute if entity @s[scores={AsaMatrix=26..31}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:narga/anim/destroy_head/keyframes/4
execute if entity @s[scores={AsaMatrix=32..37}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:narga/anim/destroy_head/keyframes/5
execute if entity @s[scores={AsaMatrix=38..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:narga/anim/destroy_head/keyframes/6
execute if entity @s[scores={AsaMatrix=46..55}] run tp @s ^0.05 ^0.015 ^0.15
execute if entity @s[scores={AsaMatrix=56..}] run function asa_animator:narga/anim/destroy_head/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:narga/manager/particle/jump