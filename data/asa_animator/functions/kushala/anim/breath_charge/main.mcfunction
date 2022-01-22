# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/breath_charge/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/breath_charge/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/breath_charge/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0.03571429 ^-0.04285714
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:kushala/anim/breath_charge/keyframes/2
execute if entity @s[scores={AsaMatrix=13..24}] run tp @s ^0 ^0 ^-0.004166667
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:kushala/anim/breath_charge/keyframes/3
execute if entity @s[scores={AsaMatrix=25..36}] run tp @s ^0 ^0 ^-0.004166666
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:kushala/anim/breath_charge/keyframes/4
execute if entity @s[scores={AsaMatrix=37..43}] run tp @s ^0 ^-0.02142857 ^0.02857143
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:kushala/anim/breath_charge/keyframes/5
execute if entity @s[scores={AsaMatrix=44..49}] run tp @s ^0 ^-0.01666667 ^0.03333334
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:kushala/anim/breath_charge/keyframes/6
execute if entity @s[scores={AsaMatrix=50..53}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=54}] run function asa_animator:kushala/anim/breath_charge/keyframes/7
execute if entity @s[scores={AsaMatrix=54..68}] run tp @s ^0 ^0.006666667 ^-0.01333333
execute if entity @s[scores={AsaMatrix=69..}] run function asa_animator:kushala/anim/breath_charge/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1..35}] run function asa_animator:kushala/manager/rotate

execute if entity @s[scores={AsaMatrix=12..20}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.9
execute if entity @s[scores={AsaMatrix=12..20}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=12..25}] run playsound entity.player.breath master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=12..36}] positioned ~ ~8 ~ run particle cloud ~ ~ ~ 1 1 1 0.2 4

execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:kushala/manager/particle/step

# 発射
execute if entity @s[scores={AsaMatrix=36}] run summon marker ^ ^0.7 ^8 {Tags:["KushalaBreathTarget"]}
execute if entity @s[scores={AsaMatrix=36}] unless entity @e[tag=KushalaAttackTarget,distance=0..8] at @e[tag=KushalaAttackTarget,limit=1] run tp @e[type=marker,tag=KushalaBreathTarget] ~ ~0.5 ~
execute if entity @s[scores={AsaMatrix=51}] positioned ^ ^2.5 ^6 run function asa_animator:kushala/anim/breath_charge/events/shot