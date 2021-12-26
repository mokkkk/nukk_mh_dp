# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_stay/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_stay/keyframes/0
execute if entity @s[scores={AsaMatrix=1..12}] run tp @s ^0 ^-0.05 ^0 ~0.1 ~
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:reus/anim/flying_stay/keyframes/1
execute if entity @s[scores={AsaMatrix=13..24}] run tp @s ^0 ^0.05 ^0.01666667 ~-0.1 ~
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:reus/anim/flying_stay/keyframes/2
execute if entity @s[scores={AsaMatrix=25..36}] run tp @s ^0 ^-0.05 ^-0.008333334 ~0.1 ~
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:reus/anim/flying_stay/keyframes/3
execute if entity @s[scores={AsaMatrix=37..48}] run tp @s ^0 ^0.05 ^-0.008333334 ~-0.1 ~
execute if entity @s[scores={AsaMatrix=49..}] run function asa_animator:reus/anim/flying_stay/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_reus_actcount AsaMatrix matches 1.. run function asa_animator:reus/anim/stay/events/change

execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=34}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7