# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/start_fly/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/start_fly/keyframes/0
execute if score @s AsaMatrix matches 1..4 run tp @s ^0 ^-0.075 ^0.25
execute if score @s AsaMatrix matches 5 run function asa_animator:reus/anger/start_fly/keyframes/1
execute if score @s AsaMatrix matches 5..8 run tp @s ^0 ^0.45 ^0.25
execute if score @s AsaMatrix matches 9 run function asa_animator:reus/anger/start_fly/keyframes/2
execute if score @s AsaMatrix matches 9..16 run tp @s ^0 ^0.125 ^0.125
execute if score @s AsaMatrix matches 17.. run function asa_animator:reus/anger/start_fly/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model
execute if score @s AsaMatrix matches 4 run tag @s add IsFlying

# 効果音
execute if score @s AsaMatrix matches 8 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7