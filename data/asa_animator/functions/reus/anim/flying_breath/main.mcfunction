# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_breath/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_breath/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^-0.075 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_breath/keyframes/1
execute if entity @s[scores={AsaMatrix=9..18}] run tp @s ^0 ^0.06 ^-0.05
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:reus/anim/flying_breath/keyframes/2
execute if entity @s[scores={AsaMatrix=19..26}] run tp @s ^0 ^0.1 ^-0.1
execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:reus/anim/flying_breath/keyframes/3
execute if entity @s[scores={AsaMatrix=27..34}] run tp @s ^0 ^-0.12 ^0
execute if entity @s[scores={AsaMatrix=35..}] run function asa_animator:reus/anim/flying_breath/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=..18}] run function asa_animator:reus/manager/rotate
execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=24}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7


# 発射位置決定
execute if entity @s[scores={AsaMatrix=18}] run summon marker ^ ^0.7 ^8 {Tags:["ReusBreathTarget"]}
execute if entity @s[scores={AsaMatrix=18}] unless entity @e[distance=0..8,tag=ReusAttackTarget] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=marker,tag=ReusBreathTarget] ~ ~ ~

# ブレス発射
execute if entity @s[scores={AsaMatrix=26}] positioned ^ ^3 ^5 facing entity @e[type=marker,tag=ReusBreathTarget,limit=1] feet run function asa_animator:reus/anim/breath/events/shot