# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_move_forward/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_move_forward/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.125 ^-0.075
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_move_forward/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^-0.125 ^0.175
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:reus/anim/flying_move_forward/keyframes/2
execute if entity @s[scores={AsaMatrix=17..22}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:reus/anim/flying_move_forward/keyframes/3
execute if entity @s[scores={AsaMatrix=23..30}] run tp @s ^0 ^-0.0625 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:reus/anim/flying_move_forward/keyframes/4
execute if entity @s[scores={AsaMatrix=31..40}] run tp @s ^0 ^0.15 ^-0.08
execute if entity @s[scores={AsaMatrix=41..}] run function asa_animator:reus/anim/flying_move_forward/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

function asa_animator:reus/manager/rotate
execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=28}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=10..35}] at @s unless entity @e[tag=ReusAttackTarget,distance=0..7] facing entity @e[tag=ReusAttackTarget] feet run tp @s ^ ^ ^0.7
execute if entity @s[scores={AsaMatrix=10..35}] at @s if entity @e[tag=ReusAttackTarget,distance=0..7] run tp @s ^ ^ ^0.1