# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/head/start
execute if score @s AsaMatrix matches 1 run function asa_animator:diablos/anim/anger/head/keyframes/0
execute if score @s AsaMatrix matches 9 run function asa_animator:diablos/anim/anger/head/keyframes/1
execute if score @s AsaMatrix matches 18 run function asa_animator:diablos/anim/anger/head/keyframes/2
execute if score @s AsaMatrix matches 18..20 run tp @s ^0 ^0 ^0.6 ~-2 ~
execute if score @s AsaMatrix matches 21 run function asa_animator:diablos/anim/anger/head/keyframes/3
execute if score @s AsaMatrix matches 21..24 run tp @s ^0 ^-0.0625 ^0.5 ~-1 ~
execute if score @s AsaMatrix matches 25 run function asa_animator:diablos/anim/anger/head/keyframes/4
execute if score @s AsaMatrix matches 25..27 run tp @s ^0 ^0.08333334 ^0.2 ~-1 ~
execute if score @s AsaMatrix matches 28 run function asa_animator:diablos/anim/anger/head/keyframes/5
execute if score @s AsaMatrix matches 28..33 run tp @s ^0 ^0 ^0.1 ~1 ~
execute if score @s AsaMatrix matches 34 run function asa_animator:diablos/anim/anger/head/keyframes/6
execute if score @s AsaMatrix matches 34..36 run tp @s ^0 ^0 ^0.6 ~ ~
execute if score @s AsaMatrix matches 37 run function asa_animator:diablos/anim/anger/head/keyframes/7
execute if score @s AsaMatrix matches 37..40 run tp @s ^0 ^-0.0625 ^0.5 ~1 ~
execute if score @s AsaMatrix matches 41 run function asa_animator:diablos/anim/anger/head/keyframes/8
execute if score @s AsaMatrix matches 41..43 run tp @s ^0 ^0.08333334 ^0.2 ~1 ~
execute if score @s AsaMatrix matches 44 run function asa_animator:diablos/anim/anger/head/keyframes/9
execute if score @s AsaMatrix matches 44..48 run tp @s ^0 ^0 ^0.1 ~-1 ~
execute if score @s AsaMatrix matches 49 run function asa_animator:diablos/anim/anger/head/keyframes/10
execute if score @s AsaMatrix matches 49..61 run tp @s ^0 ^0 ^0.05 ~1 ~
execute if score @s AsaMatrix matches 62.. run function asa_animator:diablos/anim/normal/head/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute if score @s AsaMatrix matches 1..17 run function asa_animator:diablos/manager/rotate

execute if score @s AsaMatrix matches 19 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 .07
execute if score @s AsaMatrix matches 35 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 .07

execute if score @s AsaMatrix matches 18..26 run particle block sand ~ ~ ~ 1 0 1 0 4
execute if score @s AsaMatrix matches 34..42 run particle block sand ~ ~ ~ 1 0 1 0 4

execute if score @s AsaMatrix matches 19..28 run function asa_animator:diablos/anim/normal/head/events/damage
execute if score @s AsaMatrix matches 35..44 run function asa_animator:diablos/anim/normal/head/events/damage