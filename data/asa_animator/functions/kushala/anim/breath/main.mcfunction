# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/breath/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/breath/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/breath/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0.03571429 ^-0.04285714
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:kushala/anim/breath/keyframes/2
execute if entity @s[scores={AsaMatrix=13..21}] run tp @s ^0 ^0 ^-0.01111111
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:kushala/anim/breath/keyframes/3
execute if entity @s[scores={AsaMatrix=22..29}] run tp @s ^0 ^-0.01875 ^0.025
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:kushala/anim/breath/keyframes/4
execute if entity @s[scores={AsaMatrix=30..34}] run tp @s ^0 ^-0.02 ^0.04
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:kushala/anim/breath/keyframes/5
execute if entity @s[scores={AsaMatrix=35..50}] run tp @s ^0 ^0.00625 ^-0.0125
execute if entity @s[scores={AsaMatrix=51..}] run function asa_animator:kushala/anim/breath/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..12}] run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:kushala/manager/particle/step

# 発射
execute if entity @s[scores={AsaMatrix=13}] run summon marker ^ ^0.7 ^20 {Tags:["KushalaBreathTarget"]}
execute if entity @s[scores={AsaMatrix=13}] unless entity @e[tag=KushalaAttackTarget,distance=0..8] at @e[tag=KushalaAttackTarget,limit=1] run tp @e[type=marker,tag=KushalaBreathTarget] ~ ~ ~
execute if entity @s[scores={AsaMatrix=32}] positioned ^ ^2.5 ^6 run function asa_animator:kushala/anim/breath/events/shot