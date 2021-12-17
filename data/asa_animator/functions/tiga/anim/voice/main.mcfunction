# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/voice/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/voice/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0.025 ^-0.025
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:tiga/anim/voice/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^-0.025 ^-0.025
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:tiga/anim/voice/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^0.025 ^-0.025
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim/voice/keyframes/3
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^-0.025 ^-0.025
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim/voice/keyframes/4
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0 ^-0.0375 ^-0.025
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:tiga/anim/voice/keyframes/5
execute if entity @s[scores={AsaMatrix=25..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim/voice/keyframes/6
execute if entity @s[scores={AsaMatrix=31..38}] run tp @s ^0 ^0.0625 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:tiga/anim/voice/keyframes/7
execute if entity @s[scores={AsaMatrix=39..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:tiga/anim/voice/keyframes/8
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^-0.04 ^0.14
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:tiga/anim/voice/keyframes/9
execute if entity @s[scores={AsaMatrix=46..65}] run tp @s ^0 ^0 ^0.005
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:tiga/anim/voice/keyframes/10
execute if entity @s[scores={AsaMatrix=66..80}] run tp @s ^0 ^0 ^-0.01333333
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:tiga/anim/voice/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model
