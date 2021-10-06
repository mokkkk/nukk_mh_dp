# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_spin_combo/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/0
execute if score @s AsaMatrix matches 1..15 run tp @s ^0.006666667 ^0 ^0.2
execute if score @s AsaMatrix matches 16 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/1
execute if score @s AsaMatrix matches 16..25 run tp @s ^-0.01 ^0.1 ^0
execute if score @s AsaMatrix matches 26 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/2
execute if score @s AsaMatrix matches 26..35 run tp @s ^0 ^0.01 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/3
execute if score @s AsaMatrix matches 36..45 run tp @s ^0 ^0.69 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/4
execute if score @s AsaMatrix matches 46..55 run tp @s ^0 ^-0.8 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/5
execute if score @s AsaMatrix matches 56..65 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 66 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/6
execute if score @s AsaMatrix matches 66..75 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 76 run function asa_animator:zinogre/anim/tail_spin_combo/keyframes/7
execute if score @s AsaMatrix matches 76..95 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 96.. run function asa_animator:zinogre/anim/tail_spin_combo/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model


execute if score @s AsaMatrix matches 15..45 at @s run tp @s ^-0.5 ^ ^-0.5 ~-22.5 ~
execute if score @s AsaMatrix matches 46..55 at @s run tp @s ^-0.5 ^ ^-0.5 ~-36 ~
execute if score @s AsaMatrix matches 56..75 at @s run tp @s ^-0.1 ^ ^ ~-2 ~

execute if score @s AsaMatrix matches 20 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 35 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.8
execute if score @s AsaMatrix matches 60..63 run playsound block.grass.step master @a ~ ~ ~ 2 0.8

execute if score @s AsaMatrix matches 60..63 run particle block grass ~ ~ ~ 1.3 0.3 1.3 0.05 20

execute if score @s AsaMatrix matches 3..14 at @s if block ~ ~-0.2 ~ #asa_animator:no_collision run tp @s ~ ~-0.2 ~ ~ ~
execute if score @s AsaMatrix matches 3..14 at @s unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.2 ~ ~ ~

execute if score @s AsaMatrix matches 20..45 at @e[type=armor_stand,tag=ZinogreParts,tag=Tail2] positioned ~ ~1.4 ~ run function asa_animator:zinogre/anim/tail_spin/events/damage