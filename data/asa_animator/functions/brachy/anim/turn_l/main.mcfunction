# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/turn_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachy/anim/turn_l/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.0375 ^0
execute if score @s AsaMatrix matches 5 run function asa_animator:brachy/anim/turn_l/keyframes/1
execute if score @s AsaMatrix matches 5..8 run tp @s ^0 ^-0.05 ^0
execute if score @s AsaMatrix matches 9 run function asa_animator:brachy/anim/turn_l/keyframes/2
execute if score @s AsaMatrix matches 9..13 run tp @s ^0 ^0.2 ^0
execute if score @s AsaMatrix matches 14 run function asa_animator:brachy/anim/turn_l/keyframes/3
execute if score @s AsaMatrix matches 14..20 run tp @s ^0 ^-0.1642857 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:brachy/anim/turn_l/keyframes/4
execute if score @s AsaMatrix matches 21..25 run tp @s ^0.2 ^0.04 ^0
execute if score @s AsaMatrix matches 26.. run function asa_animator:brachy/anim/turn_l/end
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate
function asa_animator:brachy/model

function asa_animator:brachy/manager/rotate
execute if score @s AsaMatrix matches 5 run function asa_animator:brachy/anim/turn_l/events/pos/set_pos
execute if score @s AsaMatrix matches 8..20 run function asa_animator:brachy/anim/turn_l/events/pos/offset
execute if score @s AsaMatrix matches 8 positioned ^1 ^ ^3 run function asa_animator:brachy/anim/turn_l/events/set
execute if score @s AsaMatrix matches 8 run function asa_animator:brachy/manager/particle/jump