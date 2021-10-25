# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash_bite/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash_bite/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^0 ^0.07142857
execute if score @s AsaMatrix matches 8 run function asa_animator:reia/anim/dash_bite/keyframes/1
execute if score @s AsaMatrix matches 8..10 run tp @s ^0 ^0 ^0.06666666
execute if score @s AsaMatrix matches 11 run function asa_animator:reia/anim/dash_bite/keyframes/2
execute if score @s AsaMatrix matches 11..17 run tp @s ^0 ^0 ^0.04285714
execute if score @s AsaMatrix matches 18 run function asa_animator:reia/anim/dash_bite/keyframes/3
execute if score @s AsaMatrix matches 18..27 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 28 run function asa_animator:reia/anim/dash_bite/keyframes/4
execute if score @s AsaMatrix matches 28..40 run tp @s ^0 ^0 ^-0.07692308
execute if score @s AsaMatrix matches 41.. run function asa_animator:reia/anim/dash_bite/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

# 高度調整
execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if score @s AsaMatrix matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 14 positioned ^ ^1 ^4.5 run function asa_animator:reia/anim/dash_bite/events/damage