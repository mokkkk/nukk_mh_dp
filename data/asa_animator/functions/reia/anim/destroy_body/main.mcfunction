# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/destroy_body/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/destroy_body/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^-0.0625
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reia/anim/destroy_body/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^-0.0375 ^-0.0625
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reia/anim/destroy_body/keyframes/2
execute if entity @s[scores={AsaMatrix=17..30}] run tp @s ^0 ^0.0007142872 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reia/anim/destroy_body/keyframes/3
execute if entity @s[scores={AsaMatrix=31..45}] run tp @s ^0 ^0.01933333 ^0.06666667
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:reia/anim/destroy_body/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if entity @s[scores={AsaMatrix=1}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=1}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~