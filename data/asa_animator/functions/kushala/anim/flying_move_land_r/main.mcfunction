# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_land_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_land_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0.2833333 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:kushala/anim/flying_move_land_r/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:kushala/anim/flying_move_land_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..19}] run tp @s ^0 ^-0.2428571 ^0
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:kushala/anim/flying_move_land_r/keyframes/3
execute if entity @s[scores={AsaMatrix=20..27}] run tp @s ^-0.6 ^0 ^0.3
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:kushala/anim/flying_move_land_r/keyframes/4
execute if entity @s[scores={AsaMatrix=28..32}] run tp @s ^-0.2 ^0 ^0
execute if entity @s[scores={AsaMatrix=33..}] run function asa_animator:kushala/anim/flying_move_land_r/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..5}] run function asa_animator:kushala/anim/step_turn_l/events/rotate
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_move_land_r/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=6}] run kill @e[type=marker,tag=KushalaMovePos]
execute if entity @s[scores={AsaMatrix=1..19}] run function asa_animator:kushala/anim/flying_move_land_l/events/pos/offset

execute if entity @s[scores={AsaMatrix=12..}] at @s run function asa_animator:kushala/manager/rotate
execute if entity @s[scores={AsaMatrix=19}] run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19..}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19..}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if entity @s[scores={AsaMatrix=19..}] at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=19..}] at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:kushala/manager/model/change_to_normal