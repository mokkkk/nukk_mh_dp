# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/jump_attack/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/jump_attack/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.2
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/jump_attack/keyframes/1
execute if entity @s[scores={AsaMatrix=6..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/jump_attack/keyframes/2
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0.4 ^0.2
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/jump_attack/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/jump_attack/keyframes/4
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^-0.2 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/jump_attack/keyframes/5
execute if entity @s[scores={AsaMatrix=36..40}] run tp @s ^0 ^-0.2 ^0.4
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:zinogre/anim/jump_attack/keyframes/6
execute if entity @s[scores={AsaMatrix=41..50}] run tp @s ^0 ^0 ^0.1
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:zinogre/anim/jump_attack/keyframes/7
execute if entity @s[scores={AsaMatrix=51..65}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=66..}] run function asa_animator:zinogre/anim/jump_attack/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

execute if entity @s[scores={AsaMatrix=1..15}] run function asa_animator:zinogre/manager/rotate_fast

execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/jump_attack/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=20}] run playsound block.grass.fall master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=20}] run particle block grass ~ ~ ~ 1 0 1 0 30

execute if entity @s[scores={AsaMatrix=21..35}] run function asa_animator:zinogre/anim/jump_attack/events/pos/offset

execute if entity @s[scores={AsaMatrix=35..38}] run playsound block.grass.fall master @a ~ ~ ~ 2 1
execute if entity @s[scores={AsaMatrix=35..38}] run particle block grass ~ ~ ~ 1 0 1 0 10
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:zinogre/anim/jump_attack/events/damage