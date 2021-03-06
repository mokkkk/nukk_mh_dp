# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0.01 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reus/anim/jump/keyframes/1
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/jump/keyframes/2
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^-0.1 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:reus/anim/jump/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^0.88 ^-0.04 ~-1 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/jump/keyframes/4
execute if entity @s[scores={AsaMatrix=31..40}] run tp @s ^0 ^0.05 ^-0.03
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:reus/anim/jump/keyframes/5
execute if entity @s[scores={AsaMatrix=41..45}] run tp @s ^0 ^-0.98 ^0.1
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:reus/anim/jump/keyframes/6
execute if entity @s[scores={AsaMatrix=46..53}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:reus/anim/jump/keyframes/7
execute if entity @s[scores={AsaMatrix=54..65}] run tp @s ^0 ^0.03333334 ^0
execute if entity @s[scores={AsaMatrix=66..}] run function asa_animator:reus/anim/jump/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=26}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=26}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=26}] run particle block grass_block ~ ~0.5 ~ 1 0 1 0 30
execute if entity @s[scores={AsaMatrix=46}] positioned ^ ^ ^1 run function asa_animator:reus/anim/jump/events/damage

execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/manager/model/change_to_fly
execute if entity @s[scores={AsaMatrix=65}] run function asa_animator:reus/manager/model/change_to_normal