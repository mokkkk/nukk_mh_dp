# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb_line/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bomb_line/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^-0.01428571 ^0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:teo/anim/bomb_line/keyframes/1
execute if entity @s[scores={AsaMatrix=8..15}] run tp @s ^0 ^0.0125 ^-0.025
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:teo/anim/bomb_line/keyframes/2
execute if entity @s[scores={AsaMatrix=16..25}] run tp @s ^0 ^0 ^-0.01
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:teo/anim/bomb_line/keyframes/3
execute if entity @s[scores={AsaMatrix=26..33}] run tp @s ^0 ^0.0125 ^-0.0375
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:teo/anim/bomb_line/keyframes/4
execute if entity @s[scores={AsaMatrix=34..48}] run tp @s ^0 ^-0.006666667 ^-0.006666666
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:teo/anim/bomb_line/keyframes/5
execute if entity @s[scores={AsaMatrix=49..53}] run tp @s ^0 ^0 ^0.02
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:teo/anim/bomb_line/keyframes/6
execute if entity @s[scores={AsaMatrix=54..59}] run tp @s ^0 ^0 ^0.01666667
execute if entity @s[scores={AsaMatrix=60}] run function asa_animator:teo/anim/bomb_line/keyframes/7
execute if entity @s[scores={AsaMatrix=60..71}] run tp @s ^0 ^-0.01666667 ^0.025
execute if entity @s[scores={AsaMatrix=72}] run function asa_animator:teo/anim/bomb_line/keyframes/8
execute if entity @s[scores={AsaMatrix=72..79}] run tp @s ^0 ^0 ^0.0125
execute if entity @s[scores={AsaMatrix=80}] run function asa_animator:teo/anim/bomb_line/keyframes/9
execute if entity @s[scores={AsaMatrix=80..88}] run tp @s ^0 ^0.02222222 ^-0.01111111
execute if entity @s[scores={AsaMatrix=89..}] run function asa_animator:teo/anim/bomb_line/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=..20}] run function asa_animator:teo/manager/rotate

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/manager/model/change_to_open
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:teo/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:teo/manager/particle/step

execute if entity @s[scores={AsaMatrix=33}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=33}] run particle flame ^ ^3 ^4 1 1 1 1 30 force
execute if entity @s[scores={AsaMatrix=33}] positioned ^ ^ ^3 as @a[distance=0..7] run function mh_dp:player/knockback/start_dwind

execute if entity @s[scores={AsaMatrix=35}] positioned ^ ^ ^6 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=39}] positioned ^ ^ ^12 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=43}] positioned ^ ^ ^18 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=47}] positioned ^ ^ ^24 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=35}] rotated ~25 ~ positioned ^ ^ ^6 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=39}] rotated ~25 ~ positioned ^ ^ ^12 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=43}] rotated ~25 ~ positioned ^ ^ ^18 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=47}] rotated ~25 ~ positioned ^ ^ ^24 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=35}] rotated ~-25 ~ positioned ^ ^ ^6 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=39}] rotated ~-25 ~ positioned ^ ^ ^12 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=43}] rotated ~-25 ~ positioned ^ ^ ^18 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=47}] rotated ~-25 ~ positioned ^ ^ ^24 run function asa_animator:teo/manager/bomb/set_bomb
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:teo/manager/bomb/ingite