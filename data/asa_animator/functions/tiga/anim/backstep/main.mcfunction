# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/backstep/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/backstep/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.01714286 ^-0.07142857
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:tiga/anim/backstep/keyframes/1
execute if entity @s[scores={AsaMatrix=8..13}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:tiga/anim/backstep/keyframes/2
execute if entity @s[scores={AsaMatrix=14..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:tiga/anim/backstep/keyframes/3
execute if entity @s[scores={AsaMatrix=16..21}] run tp @s ^0 ^0.6866667 ^0.08333334
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:tiga/anim/backstep/keyframes/4
execute if entity @s[scores={AsaMatrix=22..25}] run tp @s ^0 ^-0.2125 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:tiga/anim/backstep/keyframes/5
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^-0.69 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim/backstep/keyframes/6
execute if entity @s[scores={AsaMatrix=31..36}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:tiga/anim/backstep/keyframes/7
execute if entity @s[scores={AsaMatrix=37..50}] run tp @s ^0 ^0.02142857 ^0
execute if entity @s[scores={AsaMatrix=51..}] run function asa_animator:tiga/anim/backstep/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=..20}] run function asa_animator:tiga/manager/rotate
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:tiga/anim/backstep/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=15..30}] run function asa_animator:tiga/anim/backstep/events/pos/offset
execute if entity @s[scores={AsaMatrix=31..50}] run function asa_animator:tiga/manager/ground
execute if entity @s[scores={AsaMatrix=31}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=15}] run function asa_animator:tiga/manager/particle/jump