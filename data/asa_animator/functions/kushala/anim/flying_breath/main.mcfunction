# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_breath/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_breath/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/flying_breath/keyframes/1
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^-0.07142857 ^0
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:kushala/anim/flying_breath/keyframes/2
execute if entity @s[scores={AsaMatrix=18..27}] run tp @s ^0 ^0.05 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=28..}] run function asa_animator:kushala/anim/flying_breath/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..7}] run function asa_animator:kushala/manager/rotate
# 発射
execute if entity @s[scores={AsaMatrix=8}] run summon marker ^ ^0.7 ^20 {Tags:["KushalaBreathTarget"]}
execute if entity @s[scores={AsaMatrix=8}] unless entity @e[tag=KushalaAttackTarget,distance=0..8] at @e[tag=KushalaAttackTarget,limit=1] run tp @e[type=marker,tag=KushalaBreathTarget] ~ ~ ~
execute if entity @s[scores={AsaMatrix=12}] positioned ^ ^3.5 ^6 run function asa_animator:kushala/anim/breath/events/shot
execute if entity @s[scores={AsaMatrix=18}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7