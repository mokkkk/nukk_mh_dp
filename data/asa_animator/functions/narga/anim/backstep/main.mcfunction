# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/backstep/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/backstep/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^-0.06666666 ^-0.024 ^-0.1
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:narga/anim/backstep/keyframes/1
execute if entity @s[scores={AsaMatrix=6..11}] run tp @s ^0.05555555 ^0.52 ^0.08333334
execute if entity @s[scores={AsaMatrix=12}] run function asa_animator:narga/anim/backstep/keyframes/2
execute if entity @s[scores={AsaMatrix=12..20}] run tp @s ^0 ^-0.3666667 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:narga/anim/backstep/keyframes/3
execute if entity @s[scores={AsaMatrix=21..30}] run tp @s ^0 ^0.03 ^0 ~-0.05 ~
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:narga/anim/backstep/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=..20}] run function asa_animator:narga/manager/rotate
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:narga/anim/backstep/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6..20}] run function asa_animator:narga/anim/backstep/events/pos/offset
execute if entity @s[scores={AsaMatrix=21..30}] run function asa_animator:narga/manager/ground

execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:narga/manager/particle/jump