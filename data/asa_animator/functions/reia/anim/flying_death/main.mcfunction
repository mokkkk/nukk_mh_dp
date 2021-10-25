# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/flying_death/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reia/anim/flying_death/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0.1666667 ^0 ~-1 ~
execute if score @s AsaMatrix matches 7 run function asa_animator:reia/anim/flying_death/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^0 ^0.1666667 ^0
execute if score @s AsaMatrix matches 13 run function asa_animator:reia/anim/flying_death/keyframes/2
execute if score @s AsaMatrix matches 13..20 run tp @s ^0 ^-0.375 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:reia/anim/flying_death/keyframes/3
execute if score @s AsaMatrix matches 21..80 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 81.. run function asa_animator:reia/anim/flying_death/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

execute if score @s AsaMatrix matches 12 run function asa_animator:reia/anim/flying_death/events/set_pos
execute if score @s AsaMatrix matches 13..20 run function asa_animator:reia/anim/flying_death/events/offset

execute if score @s AsaMatrix matches 21 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 21 run particle block grass_block ~ ~1 ~ 1.5 0.1 1.5 0 30

execute if score @s AsaMatrix matches 21 run data modify entity @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10118