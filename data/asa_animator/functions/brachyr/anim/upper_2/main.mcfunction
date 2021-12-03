# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/upper_2/start
execute if score @s AsaMatrix matches 1 run function asa_animator:brachyr/anim/upper_2/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^-0.04 ^-0.1
execute if score @s AsaMatrix matches 6 run function asa_animator:brachyr/anim/upper_2/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^0.06 ^-0.1
execute if score @s AsaMatrix matches 11 run function asa_animator:brachyr/anim/upper_2/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^0.02 ^0
execute if score @s AsaMatrix matches 16 run function asa_animator:brachyr/anim/upper_2/keyframes/3
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^-0.02 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:brachyr/anim/upper_2/keyframes/4
execute if score @s AsaMatrix matches 21..22 run tp @s ^0 ^0.1 ^0
execute if score @s AsaMatrix matches 23 run function asa_animator:brachyr/anim/upper_2/keyframes/5
execute if score @s AsaMatrix matches 23..25 run tp @s ^0.1 ^-0.03333334 ^0
execute if score @s AsaMatrix matches 26 run function asa_animator:brachyr/anim/upper_2/keyframes/6
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^0.09999999 ^0
execute if score @s AsaMatrix matches 31 run function asa_animator:brachyr/anim/upper_2/keyframes/7
execute if score @s AsaMatrix matches 31..38 run tp @s ^0 ^-0.1125 ^0 ~0.5 ~
execute if score @s AsaMatrix matches 39 run function asa_animator:brachyr/anim/upper_2/keyframes/8
execute if score @s AsaMatrix matches 39..44 run tp @s ^-0.05 ^0.05 ^0 ~-0.5 ~
execute if score @s AsaMatrix matches 45 run function asa_animator:brachyr/anim/upper_2/keyframes/9
execute if score @s AsaMatrix matches 45..47 run tp @s ^0 ^0.03333334 ^0
execute if score @s AsaMatrix matches 48 run function asa_animator:brachyr/anim/upper_2/keyframes/10
execute if score @s AsaMatrix matches 48..52 run tp @s ^0 ^-0.02 ^0
execute if score @s AsaMatrix matches 53 run function asa_animator:brachyr/anim/upper_2/keyframes/11
execute if score @s AsaMatrix matches 53..54 run tp @s ^0 ^0.1 ^0
execute if score @s AsaMatrix matches 55 run function asa_animator:brachyr/anim/upper_2/keyframes/12
execute if score @s AsaMatrix matches 55..57 run tp @s ^-0.1 ^-0.03333334 ^0
execute if score @s AsaMatrix matches 58 run function asa_animator:brachyr/anim/upper_2/keyframes/13
execute if score @s AsaMatrix matches 58..62 run tp @s ^0 ^0.09999999 ^0
execute if score @s AsaMatrix matches 63 run function asa_animator:brachyr/anim/upper_2/keyframes/14
execute if score @s AsaMatrix matches 63..70 run tp @s ^0 ^-0.1125 ^0 ~-0.5 ~
execute if score @s AsaMatrix matches 71 run function asa_animator:brachyr/anim/upper_2/keyframes/15
execute if score @s AsaMatrix matches 71..83 run tp @s ^0.02307692 ^0.01538462 ^0 ~0.2 ~
execute if score @s AsaMatrix matches 84.. run function asa_animator:brachyr/anim/upper_2/end
execute as @e[type=armor_stand,tag=BrachyRParts] run function #asa_matrix:animate
function asa_animator:brachyr/model

execute if score @s AsaMatrix matches 1..15 run function asa_animator:brachyr/manager/rotate
execute if score @s AsaMatrix matches 45..50 run function asa_animator:brachyr/manager/rotate

execute if score @s AsaMatrix matches 20 positioned ^ ^ ^3.5 run function asa_animator:brachyr/anim/upper_2/events/damage
execute if score @s AsaMatrix matches 22 positioned ^ ^ ^3.5 rotated ~10 0 positioned ^ ^ ^3.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 25 positioned ^ ^ ^3.5 rotated ~10 0 positioned ^ ^ ^8.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 28 positioned ^ ^ ^3.5 rotated ~10 0 positioned ^ ^ ^13.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 31 positioned ^ ^ ^3.5 rotated ~10 0 positioned ^ ^ ^18.5 run function asa_animator:brachyr/manager/bomb/head/set

execute if score @s AsaMatrix matches 52 positioned ^ ^ ^3.5 run function asa_animator:brachyr/anim/upper_2/events/damage
execute if score @s AsaMatrix matches 54 positioned ^ ^ ^3.5 rotated ~-10 0 positioned ^ ^ ^3.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 57 positioned ^ ^ ^3.5 rotated ~-10 0 positioned ^ ^ ^8.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 60 positioned ^ ^ ^3.5 rotated ~-10 0 positioned ^ ^ ^13.5 run function asa_animator:brachyr/manager/bomb/head/set
execute if score @s AsaMatrix matches 63 positioned ^ ^ ^3.5 rotated ~-10 0 positioned ^ ^ ^18.5 run function asa_animator:brachyr/manager/bomb/head/set