# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash_turn/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/dash_turn/keyframes/0
execute if score @s AsaMatrix matches 1..10 run tp @s ^0 ^0 ^-0.1
execute if score @s AsaMatrix matches 11 run function asa_animator:reia/anim/dash_turn/keyframes/1
execute if score @s AsaMatrix matches 11..20 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 21.. run function asa_animator:reia/anim/dash_turn/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

# 敵を向く
execute if score @s AsaMatrix matches 1..22 run function asa_animator:reia/manager/rotate

execute if score @s AsaMatrix matches 1..10 run particle block grass_block ~ ~ ~ 1 0.2 1 0 10
execute if score @s AsaMatrix matches 1..10 run playsound block.grass.step master @a ~ ~ ~ 2 0.7