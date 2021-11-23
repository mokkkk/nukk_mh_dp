# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/charge/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/charge/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^-0.05 ^0 ^0 ~9 ~
execute if score @s AsaMatrix matches 6 run function asa_animator:dyno/anim/charge/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^-0.025 ^0 ^0 ~9 ~
execute if score @s AsaMatrix matches 11 run function asa_animator:dyno/anim/charge/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^-0.025 ^-0.01 ^0 ~9 ~
execute if score @s AsaMatrix matches 16 run function asa_animator:dyno/anim/charge/keyframes/3
execute if score @s AsaMatrix matches 16..35 run tp @s ^0 ^0.01 ^0 ~-1 ~
execute if score @s AsaMatrix matches 36 run function asa_animator:dyno/anim/charge/keyframes/4
execute if score @s AsaMatrix matches 36..38 run tp @s ^0.03333333 ^-0.03333334 ^0 ~-12 ~
execute if score @s AsaMatrix matches 39 run function asa_animator:dyno/anim/charge/keyframes/5
execute if score @s AsaMatrix matches 39..44 run tp @s ^0.03333334 ^-0.008333334 ^0 ~-12 ~
execute if score @s AsaMatrix matches 45 run function asa_animator:dyno/anim/charge/keyframes/6
execute if score @s AsaMatrix matches 45..52 run tp @s ^0.0125 ^0 ^0 ~-2 ~
execute if score @s AsaMatrix matches 53 run function asa_animator:dyno/anim/charge/keyframes/7
execute if score @s AsaMatrix matches 53..62 run tp @s ^0.01 ^0.03 ^-0.01 ~1 ~
execute if score @s AsaMatrix matches 63 run function asa_animator:dyno/anim/charge/keyframes/8
execute if score @s AsaMatrix matches 63..75 run tp @s ^0 ^0.01538461 ^0.01538462 ~0.3 ~
execute if score @s AsaMatrix matches 76 run function asa_animator:dyno/anim/charge/keyframes/9
execute if score @s AsaMatrix matches 76..90 run tp @s ^0 ^-0.03333334 ^0.02666667 ~-0.3 ~
execute if score @s AsaMatrix matches 91.. run function asa_animator:dyno/anim/charge/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 16..35 run playsound ui.stonecutter.take_result master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 16 run playsound block.grindstone.use master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 36 run playsound item.trident.throw master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 36..37 as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU] at @s positioned ^ ^1 ^ run particle block obsidian ~ ~ ~ 0.1 0.1 0.1 1 30

execute if score @s AsaMatrix matches 16..35 as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU] at @s positioned ^ ^1 ^ run particle block obsidian ~ ~ ~ 0 0 0 0 1
execute if score @s AsaMatrix matches 16..35 as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU] at @s positioned ^ ^1 ^ run particle electric_spark ~ ~ ~ 0 0 0 1 10
execute if score @s AsaMatrix matches 16..35 as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU] at @s positioned ^ ^1 ^ run particle crit ~ ~ ~ 0 0 0 0.6 3

execute if score @s AsaMatrix matches 35 run function asa_animator:dyno/manager/model/change_to_normal_tail
execute if score @s AsaMatrix matches 55 run function asa_animator:dyno/manager/model/change_to_heat_head
execute if score @s AsaMatrix matches 55..75 as @e[distance=0..15,type=armor_stand,tag=DynoParts,tag=HeadU] at @s positioned ^ ^1 ^0.5 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 3