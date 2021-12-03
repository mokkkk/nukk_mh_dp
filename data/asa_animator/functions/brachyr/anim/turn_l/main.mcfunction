# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/turn_l/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/turn_l/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^0.0375 ^0
execute if score @s AsaMatrix matches 5 run function asa_animator:brachyr/anim/turn_l/keyframes/1
execute if score @s AsaMatrix matches 5..9 run tp @s ^0 ^-0.04 ^0
execute if score @s AsaMatrix matches 10 run function asa_animator:brachyr/anim/turn_l/keyframes/2
execute if score @s AsaMatrix matches 10..15 run tp @s ^0 ^0.1666667 ^0
execute if score @s AsaMatrix matches 16 run function asa_animator:brachyr/anim/turn_l/keyframes/3
execute if score @s AsaMatrix matches 16..23 run tp @s ^0 ^-0.14375 ^0
execute if score @s AsaMatrix matches 24 run function asa_animator:brachyr/anim/turn_l/keyframes/4
execute if score @s AsaMatrix matches 24..29 run tp @s ^0 ^0.03333334 ^0
execute if score @s AsaMatrix matches 30.. run function asa_animator:brachyr/anim/turn_l/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

function asa_animator:brachyr/manager/rotate
execute if score @s AsaMatrix matches 5 run function asa_animator:brachyr/anim/turn_l/events/pos/set_pos
execute if score @s AsaMatrix matches 9..23 run function asa_animator:brachyr/anim/turn_l/events/pos/offset
execute if score @s AsaMatrix matches 9 positioned ^1 ^ ^3 run function asa_animator:brachyr/anim/turn_l/events/set
execute if score @s AsaMatrix matches 9 run function asa_animator:brachyr/manager/particle/jump
