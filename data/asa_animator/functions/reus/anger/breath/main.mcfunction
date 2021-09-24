# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/breath/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anger/breath/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^-0.03 ^0.02
execute if score @s AsaMatrix matches 6 run function asa_animator:reus/anger/breath/keyframes/1
execute if score @s AsaMatrix matches 6..11 run tp @s ^0 ^0.04166667 ^-0.05
execute if score @s AsaMatrix matches 12 run function asa_animator:reus/anger/breath/keyframes/2
execute if score @s AsaMatrix matches 12..17 run tp @s ^0 ^0 ^-0.01666667
execute if score @s AsaMatrix matches 18 run function asa_animator:reus/anger/breath/keyframes/3
execute if score @s AsaMatrix matches 18..21 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 22 run function asa_animator:reus/anger/breath/keyframes/4
execute if score @s AsaMatrix matches 22..24 run tp @s ^0 ^-0.03333334 ^0.2
execute if score @s AsaMatrix matches 25 run function asa_animator:reus/anger/breath/keyframes/5
execute if score @s AsaMatrix matches 25..37 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 38 run function asa_animator:reus/anger/breath/keyframes/6
execute if score @s AsaMatrix matches 38..45 run tp @s ^0 ^0 ^-0.0375
execute if score @s AsaMatrix matches 46.. run function asa_animator:reus/anger/breath/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 敵を向く
execute if score @s AsaMatrix matches 1..17 run function asa_animator:reus/manager/rotate_fast

# 発射位置決定
execute if score @s AsaMatrix matches 18 at @e[tag=ReusAttackTarget,limit=1] run summon marker ~ ~ ~ {Tags:["ReusBreathTarget"]}

# ブレス発射
execute if score @s AsaMatrix matches 24 positioned ^ ^1 ^5 facing entity @e[type=marker,tag=ReusBreathTarget,limit=1] feet run function asa_animator:reus/normal/breath/effect/attack