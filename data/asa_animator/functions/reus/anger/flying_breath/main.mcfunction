# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/flying_breath/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/flying_breath/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0.05 ^0.025
execute if score @s AsaMatrix matches 9 run function asa_animator:reus/anger/flying_breath/keyframes/1
execute if score @s AsaMatrix matches 9..16 run tp @s ^0 ^0.05 ^-0.075
execute if score @s AsaMatrix matches 17 run function asa_animator:reus/anger/flying_breath/keyframes/2
execute if score @s AsaMatrix matches 17..24 run tp @s ^0 ^-0.15 ^0.075
execute if score @s AsaMatrix matches 25 run function asa_animator:reus/anger/flying_breath/keyframes/3
execute if score @s AsaMatrix matches 25..37 run tp @s ^0 ^0.03076923 ^-0.01538462
execute if score @s AsaMatrix matches 38.. run function asa_animator:reus/anger/flying_breath/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 敵を向く
execute if score @s AsaMatrix matches 1..8 run function asa_animator:reus/manager/rotate_fast

# 発射位置決定
execute if score @s AsaMatrix matches 9 at @e[tag=ReusAttackTarget,limit=1] run summon marker ~ ~ ~ {Tags:["ReusBreathTarget"]}

# ブレス発射
execute if score @s AsaMatrix matches 20 positioned ^ ^3 ^4 facing entity @e[type=marker,tag=ReusBreathTarget,limit=1] feet run function asa_animator:reus/normal/breath/effect/attack

# 効果音
execute if score @s AsaMatrix matches 8 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 24 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7