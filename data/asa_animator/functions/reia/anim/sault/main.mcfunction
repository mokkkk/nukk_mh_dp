# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/sault/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/sault/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^-0.03 ^0.1 ~-0.1 ~
execute if score @s AsaMatrix matches 11 run function asa_animator:reia/anim/sault/keyframes/1
execute if score @s AsaMatrix matches 11..18 run tp @s ^0 ^0.4125 ^-0.125 ~-0.1 ~
execute if score @s AsaMatrix matches 19 run function asa_animator:reia/anim/sault/keyframes/2
execute if score @s AsaMatrix matches 19..28 run tp @s ^0 ^-0.05 ^0.2 ~-0.1 ~
execute if score @s AsaMatrix matches 29 run function asa_animator:reia/anim/sault/keyframes/3
execute if score @s AsaMatrix matches 29..40 run tp @s ^0 ^0.06666666 ^0 ~0.1 ~
execute if score @s AsaMatrix matches 41 run function asa_animator:reia/anim/sault/keyframes/4
execute if score @s AsaMatrix matches 41..44 run tp @s ^0 ^0.05 ^0 ~-0.1 ~
execute if score @s AsaMatrix matches 45 run function asa_animator:reia/anim/sault/keyframes/5
execute if score @s AsaMatrix matches 45..60 run tp @s ^0 ^0.03888889 ^-0.05555556 ~-0.1 ~
execute if score @s AsaMatrix matches 61.. run function asa_animator:reia/anim/sault/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if score @s AsaMatrix matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 38 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 敵の方向を向く
execute if score @s AsaMatrix matches 1..5 run function asa_animator:reia/manager/rotate

execute if score @s AsaMatrix matches 10 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute if score @s AsaMatrix matches 11 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 12..30 at @e[type=armor_stand,distance=0..10,tag=ReiaParts,tag=Tail2] run function asa_animator:reia/anim/sault/events/damage