# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_damage/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/anim/flying_damage/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0.1666667 ^0
execute if score @s AsaMatrix matches 7 run function asa_animator:reus/anim/flying_damage/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^0 ^0.1666667 ^0
execute if score @s AsaMatrix matches 13 run function asa_animator:reus/anim/flying_damage/keyframes/2
execute if score @s AsaMatrix matches 13..20 run tp @s ^0 ^-0.375 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:reus/anim/flying_damage/keyframes/3
execute if score @s AsaMatrix matches 21..35 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 36 run function asa_animator:reus/anim/flying_damage/keyframes/4
execute if score @s AsaMatrix matches 36..50 run tp @s ^0 ^0.03333334 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:reus/anim/flying_damage/keyframes/5
execute if score @s AsaMatrix matches 51..70 run tp @s ^0 ^0.025 ^0
execute if score @s AsaMatrix matches 71.. run function asa_animator:reus/anim/flying_damage/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if score @s AsaMatrix matches 1 run playsound entity.item.break master @a ~ ~ ~ 2 0.5

execute if score @s AsaMatrix matches 12 run function asa_animator:reus/anim/flying_damage/events/set_pos
execute if score @s AsaMatrix matches 13..20 run function asa_animator:reus/anim/flying_damage/events/offset

execute if score @s AsaMatrix matches 21 run tag @s remove IsFlying
execute if score @s AsaMatrix matches 21 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 21 run particle block grass_block ~ ~1 ~ 1.5 0.1 1.5 0 30