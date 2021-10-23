# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash/keyframes/0
execute if score @s AsaMatrix matches 1..5 run tp @s ^0 ^0.06 ^1
execute if score @s AsaMatrix matches 6 run function asa_animator:reia/anim/dash/keyframes/1
execute if score @s AsaMatrix matches 6..10 run tp @s ^0 ^-0.06 ^1
execute if score @s AsaMatrix matches 11 run function asa_animator:reia/anim/dash/keyframes/2
execute if score @s AsaMatrix matches 11..15 run tp @s ^0 ^0.06 ^1
execute if score @s AsaMatrix matches 16 run function asa_animator:reia/anim/dash/keyframes/3
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^-0.06 ^1
execute if score @s AsaMatrix matches 21.. run function asa_animator:reia/anim/dash/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

# 高度調整
execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute positioned ^ ^ ^0.8 unless block ~ ~ ~ #asa_animator:no_collision unless block ~ ~1 ~ #asa_animator:no_collision run function asa_animator:reia/anim/dash/events/change

# 攻撃
execute if entity @e[distance=0..5,type=!armor_stand,type=!marker] run function asa_animator:reia/anim/dash/events/damage

# 効果音
execute if score @s AsaMatrix matches 5 run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 15 run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.7