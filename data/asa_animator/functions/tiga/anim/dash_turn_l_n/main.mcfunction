# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_turn_l_n/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/1
execute if entity @s[scores={AsaMatrix=6..13}] run tp @s ^0 ^0 ^-0.125
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/2
execute if entity @s[scores={AsaMatrix=14..23}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/3
execute if entity @s[scores={AsaMatrix=24..27}] run tp @s ^0 ^0.01666667 ^0.125
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/4
execute if entity @s[scores={AsaMatrix=28..31}] run tp @s ^0 ^0.01666667 ^0.125
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/5
execute if entity @s[scores={AsaMatrix=32..35}] run tp @s ^0 ^0.01666667 ^0.125
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:tiga/anim/dash_turn_l_n/keyframes/6
execute if entity @s[scores={AsaMatrix=36..39}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=40..}] run function asa_animator:tiga/anim/dash_turn_l_n/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

function asa_animator:tiga/manager/rotate

execute if entity @s[scores={AsaMatrix=1..13}] at @s run tp @s ^ ^ ^-0.3
execute if entity @s[scores={AsaMatrix=14..23}] at @s run tp @s ^ ^ ^-0.1
execute if entity @s[scores={AsaMatrix=1..23}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

particle block grass_block ~ ~0.3 ~ 1 0 1 0 5
execute if entity @s[scores={AsaMatrix=31}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=39}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5