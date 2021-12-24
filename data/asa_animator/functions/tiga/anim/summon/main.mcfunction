# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/summon/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/summon/keyframes/0
execute if entity @s[scores={AsaMatrix=1..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:tiga/anim/summon/keyframes/1
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim/summon/keyframes/2
execute if entity @s[scores={AsaMatrix=31..45}] run tp @s ^0 ^0.006666667 ^0
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:tiga/anim/summon/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/summon/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=1..25}] run function asa_animator:tiga/anim/summon/events/pos/offset
execute if entity @s[scores={AsaMatrix=31..}] run function asa_animator:tiga/manager/ground
execute if entity @s[scores={AsaMatrix=26}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7