# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/normal/breath/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/normal/breath/keyframes/0
execute if score @s AsaMatrix matches 1..7 run tp @s ^0 ^-0.02142857 ^0.01428571 ~ ~
execute if score @s AsaMatrix matches 8 run function asa_animator:reus/normal/breath/keyframes/1
execute if score @s AsaMatrix matches 8..14 run tp @s ^0 ^0.03571429 ^-0.04285714 ~ ~
execute if score @s AsaMatrix matches 15 run function asa_animator:reus/normal/breath/keyframes/2
execute if score @s AsaMatrix matches 15..21 run tp @s ^0 ^0 ^-0.01428572 ~ ~
execute if score @s AsaMatrix matches 22 run function asa_animator:reus/normal/breath/keyframes/3
execute if score @s AsaMatrix matches 22..26 run tp @s ^0 ^0 ^0 ~ ~
execute if score @s AsaMatrix matches 27 run function asa_animator:reus/normal/breath/keyframes/4
execute if score @s AsaMatrix matches 27..30 run tp @s ^0 ^-0.025 ^0.15 ~ ~
execute if score @s AsaMatrix matches 31 run function asa_animator:reus/normal/breath/keyframes/5
execute if score @s AsaMatrix matches 31..45 run tp @s ^0 ^0 ^0 ~ ~
execute if score @s AsaMatrix matches 46 run function asa_animator:reus/normal/breath/keyframes/6
execute if score @s AsaMatrix matches 46..55 run tp @s ^0 ^0 ^-0.03 ~ ~
execute if score @s AsaMatrix matches 56.. run function asa_animator:reus/normal/breath/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 敵を向く
execute if score @s AsaMatrix matches 1..21 run function asa_animator:reus/manager/rotate_fast

# 発射位置決定
execute if score @s AsaMatrix matches 22 at @e[tag=ReusAttackTarget,limit=1] run summon marker ~ ~ ~ {Tags:["ReusBreathTarget"]}

# ブレス発射
execute if score @s AsaMatrix matches 30 positioned ^ ^1 ^5 facing entity @e[type=marker,tag=ReusBreathTarget,limit=1] feet run function asa_animator:reus/normal/breath/effect/attack