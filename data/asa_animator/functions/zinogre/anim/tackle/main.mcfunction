# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tackle/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/tackle/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^-0.01 ^-0.1
execute if score @s AsaMatrix matches 11 run function asa_animator:zinogre/anim/tackle/keyframes/1
execute if score @s AsaMatrix matches 11..20 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:zinogre/anim/tackle/keyframes/2
execute if score @s AsaMatrix matches 21..25 run tp @s ^0 ^0 ^0.8
execute if score @s AsaMatrix matches 26 run function asa_animator:zinogre/anim/tackle/keyframes/3
execute if score @s AsaMatrix matches 26..30 run tp @s ^0 ^0.02 ^0.4
execute if score @s AsaMatrix matches 31 run function asa_animator:zinogre/anim/tackle/keyframes/4
execute if score @s AsaMatrix matches 31..35 run tp @s ^0 ^0 ^0.2
execute if score @s AsaMatrix matches 36 run function asa_animator:zinogre/anim/tackle/keyframes/5
execute if score @s AsaMatrix matches 36..40 run tp @s ^0 ^0 ^0.1
execute if score @s AsaMatrix matches 41 run function asa_animator:zinogre/anim/tackle/keyframes/6
execute if score @s AsaMatrix matches 41..50 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:zinogre/anim/tackle/keyframes/7
execute if score @s AsaMatrix matches 51..60 run tp @s ^0 ^0 ^-0.15
execute if score @s AsaMatrix matches 61.. run function asa_animator:zinogre/anim/tackle/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 角度調整
execute if score @s AsaMatrix matches 1..20 run function asa_animator:zinogre/manager/rotate

# 攻撃
execute if score @s AsaMatrix matches 25 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 25..30 positioned ^ ^ ^1 run function asa_animator:zinogre/anim/tackle/events/damage
execute if score @s AsaMatrix matches 25..30 positioned ^ ^ ^1 run particle block grass ~ ~ ~ 1.5 0 1.5 0 20
