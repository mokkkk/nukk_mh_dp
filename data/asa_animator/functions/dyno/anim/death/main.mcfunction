# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/death/start
execute if score @s AsaMatrix matches 1 run function asa_animator:dyno/anim/death/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0 ^0 ~1 ~
execute if score @s AsaMatrix matches 11 run function asa_animator:dyno/anim/death/keyframes/1
execute if score @s AsaMatrix matches 11..28 run tp @s ^0 ^0.01666667 ^0
execute if score @s AsaMatrix matches 29 run function asa_animator:dyno/anim/death/keyframes/2
execute if score @s AsaMatrix matches 29..36 run tp @s ^0 ^-0.0125 ^0
execute if score @s AsaMatrix matches 37 run function asa_animator:dyno/anim/death/keyframes/3
execute if score @s AsaMatrix matches 37..45 run tp @s ^0 ^-0.01111111 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:dyno/anim/death/keyframes/4
execute if score @s AsaMatrix matches 46..55 run tp @s ^0.05 ^-0.02 ^0
execute if score @s AsaMatrix matches 56 run function asa_animator:dyno/anim/death/keyframes/5
execute if score @s AsaMatrix matches 56..71 run tp @s ^0.09375 ^-0.10625 ^0.0625
execute if score @s AsaMatrix matches 72 run function asa_animator:dyno/anim/death/keyframes/6
execute if score @s AsaMatrix matches 72..90 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 91.. run function asa_animator:dyno/anim/death/end
execute as @e[type=armor_stand,tag=DynoParts] run function #asa_matrix:animate
function asa_animator:dyno/model

execute if score @s AsaMatrix matches 1..10 run function asa_animator:dyno/manager/ground
execute if score @s AsaMatrix matches 71 run function asa_animator:dyno/manager/particle/jump

execute if score @s AsaMatrix matches 37 unless entity @s[tag=DHead] run data modify entity @e[type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10190
execute if score @s AsaMatrix matches 37 if entity @s[tag=DHead] run data modify entity @e[type=armor_stand,tag=DynoParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10191