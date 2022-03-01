# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/dash_stop/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/dash_stop/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0.3
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/dash_stop/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0.2
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:ruko/anim/dash_stop/keyframes/2
execute if entity @s[scores={AsaMatrix=11..22}] run tp @s ^0 ^0 ^0.08
execute if entity @s[scores={AsaMatrix=23..}] run function asa_animator:ruko/anim/stone_dash_stop/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run kill @e[type=marker,tag=RukoMoveRotate]
execute if entity @s[scores={AsaMatrix=1}] as @e[type=armor_stand,tag=RukoStoneD] at @s run function asa_animator:ruko/anim/stone_dash_stop/events/shot
playsound block.grass.step master @a ~ ~ ~ 2 0.7
particle block grass_block ~ ~0.5 ~ 1 0 1 0 3
execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground