# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/stay/start
execute if score @s AsaMatrix matches 1 run function asa_animator:narga/anim/stay/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^-0.0125 ^-0.01875
execute if score @s AsaMatrix matches 9 run function asa_animator:narga/anim/stay/keyframes/1
execute if score @s AsaMatrix matches 9..13 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 14 run function asa_animator:narga/anim/stay/keyframes/2
execute if score @s AsaMatrix matches 14..18 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 19 run function asa_animator:narga/anim/stay/keyframes/3
execute if score @s AsaMatrix matches 19..30 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 31 run function asa_animator:narga/anim/stay/keyframes/4
execute if score @s AsaMatrix matches 31..45 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 46 run function asa_animator:narga/anim/stay/keyframes/5
execute if score @s AsaMatrix matches 46..65 run tp @s ^0 ^0.005 ^0.0075
execute if score @s AsaMatrix matches 66.. run function asa_animator:narga/anim/stay/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

function asa_animator:narga/manager/ground

execute if score @s AsaMatrix matches 1 if score #mhdp_narga_actcount AsaMatrix matches 1.. run function asa_animator:reia/anim/stay/events/change
execute if score @s AsaMatrix matches 1 if entity @s[tag=IsAnger] run function asa_animator:reia/anim/stay/events/change

execute if score @s AsaMatrix matches 18 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 18 run particle block grass_block ^ ^ ^-6 1 0.1 1 0 10