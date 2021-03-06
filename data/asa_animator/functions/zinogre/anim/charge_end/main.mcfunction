# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/charge_end/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/charge_end/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/charge_end/keyframes/1
execute if entity @s[scores={AsaMatrix=6..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/charge_end/keyframes/2
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:zinogre/anim/charge_end/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if entity @s[scores={AsaMatrix=5..15}] run particle minecraft:sneeze ~ ~2 ~ 1 1 1 0.4 30
execute if entity @s[scores={AsaMatrix=5}] run summon lightning_bolt ~ 255 ~
execute if entity @s[scores={AsaMatrix=5}] run tag @s add IsThunder
execute if entity @s[scores={AsaMatrix=5}] as @e[tag=ZinogreParts] run function asa_animator:zinogre/manager/model/change_to_thunder