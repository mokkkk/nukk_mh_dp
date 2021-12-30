# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_breath_large/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reus/anim/flying_breath_large/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.2 ^0.025
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:reus/anim/flying_breath_large/keyframes/1
execute if entity @s[scores={AsaMatrix=9..20}] run tp @s ^0 ^0.1 ^-0.01666667
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:reus/anim/flying_breath_large/keyframes/2
execute if entity @s[scores={AsaMatrix=21..32}] run tp @s ^0 ^0.03333334 ^-0.025 ~1.5 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:reus/anim/flying_breath_large/keyframes/3
execute if entity @s[scores={AsaMatrix=33..42}] run tp @s ^0 ^-0.1 ^0.03
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:reus/anim/flying_breath_large/keyframes/4
execute if entity @s[scores={AsaMatrix=43..47}] run tp @s ^0 ^-0.03 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:reus/anim/flying_breath_large/keyframes/5
execute if entity @s[scores={AsaMatrix=48..52}] run tp @s ^0 ^-0.03 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:reus/anim/flying_breath_large/keyframes/6
execute if entity @s[scores={AsaMatrix=53..58}] run tp @s ^0 ^0.04999999 ^-0.03333334 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=59}] run function asa_animator:reus/anim/flying_breath_large/keyframes/7
execute if entity @s[scores={AsaMatrix=59..70}] run tp @s ^0 ^0.05 ^-0.03333334 ~-0.25 ~
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:reus/anim/flying_breath_large/keyframes/8
execute if entity @s[scores={AsaMatrix=71..82}] run tp @s ^0 ^-0.05 ^-0.01666667 ~0.3 ~
execute if entity @s[scores={AsaMatrix=83}] run function asa_animator:reus/anim/flying_breath_large/keyframes/9
execute if entity @s[scores={AsaMatrix=83..94}] run tp @s ^0 ^0.05 ^0.03333334 ~-0.3 ~
execute if entity @s[scores={AsaMatrix=95..}] run function asa_animator:reus/anim/flying_breath_large/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

execute if entity @s[scores={AsaMatrix=2}] run playsound entity.player.breath master @a ~ ~ ~ 2 0.8
execute if entity @s[scores={AsaMatrix=..18}] run function asa_animator:reus/manager/rotate
execute if entity @s[scores={AsaMatrix=6}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=40}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=78}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 発射位置決定
execute if entity @s[scores={AsaMatrix=31}] run summon marker ^ ^-4 ^6 {Tags:["ReusBreathTarget"]}
execute if entity @s[scores={AsaMatrix=31}] if entity @e[distance=5..20,tag=ReusAttackTarget] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=marker,tag=ReusBreathTarget] ~ ~ ~
execute if entity @s[scores={AsaMatrix=42}] as @e[type=armor_stand,distance=0..7,tag=ReusParts,tag=HeadU] at @s run function asa_animator:reus/anim/flying_breath_large/events/attack_start
execute if entity @s[scores={AsaMatrix=42..51}] as @e[type=marker,distance=0..7,tag=ReusChargeFPos] at @s run function asa_animator:reus/anim/flying_breath_large/events/attack
execute if entity @s[scores={AsaMatrix=52}] run kill @e[type=marker,tag=ReusChargeFPos]