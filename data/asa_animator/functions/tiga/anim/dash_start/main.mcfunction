# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_start/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_start/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:tiga/anim/dash_start/keyframes/1
execute if entity @s[scores={AsaMatrix=11..16}] run tp @s ^0 ^0 ^-0.25
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim/dash_start/keyframes/2
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0 ^-0.125
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim/dash_start/keyframes/3
execute if entity @s[scores={AsaMatrix=21..28}] run tp @s ^0 ^0 ^-0.25
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:tiga/anim/dash_start/keyframes/4
execute if entity @s[scores={AsaMatrix=29..36}] run tp @s ^0 ^0.003125 ^-0.006250024
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:tiga/anim/dash_start/keyframes/5
execute if entity @s[scores={AsaMatrix=37..41}] run tp @s ^0 ^0.015 ^-0.02999992
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:tiga/anim/dash_start/keyframes/6
execute if entity @s[scores={AsaMatrix=42..46}] run tp @s ^0 ^-0.02 ^0.9399999
execute if entity @s[scores={AsaMatrix=47..}] run function asa_animator:tiga/anim/dash_start/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

function asa_animator:tiga/manager/rotate
execute if entity @s[scores={AsaMatrix=20}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=46}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5