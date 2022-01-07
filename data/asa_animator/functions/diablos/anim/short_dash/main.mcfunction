# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/short_dash/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/short_dash/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0.07142857 ^-0.4
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:diablos/anim/short_dash/keyframes/1
execute if entity @s[scores={AsaMatrix=8..13}] run tp @s ^0 ^0 ^-0.03333333
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:diablos/anim/short_dash/keyframes/2
execute if entity @s[scores={AsaMatrix=14..20}] run tp @s ^0 ^-0.08571429 ^0.02857143
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/short_dash/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0.6
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:diablos/anim/short_dash/keyframes/4
execute if entity @s[scores={AsaMatrix=26..29}] run tp @s ^0 ^0.1 ^0.7
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:diablos/anim/short_dash/keyframes/5
execute if entity @s[scores={AsaMatrix=30..33}] run tp @s ^0 ^-0.075 ^0.9
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:diablos/anim/short_dash/keyframes/6
execute if entity @s[scores={AsaMatrix=34..37}] run tp @s ^0 ^0.075 ^1
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:diablos/anim/short_dash/keyframes/7
execute if entity @s[scores={AsaMatrix=38..41}] run tp @s ^0 ^-0.075 ^1
execute if entity @s[scores={AsaMatrix=42}] run function asa_animator:diablos/anim/short_dash/keyframes/8
execute if entity @s[scores={AsaMatrix=42..45}] run tp @s ^0 ^0.075 ^0.6
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:diablos/anim/short_dash/keyframes/9
execute if entity @s[scores={AsaMatrix=46..51}] run tp @s ^0 ^-0.03333334 ^0.3
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:diablos/anim/short_dash/keyframes/10
execute if entity @s[scores={AsaMatrix=52..61}] run tp @s ^0 ^0.01 ^0.05
execute if entity @s[scores={AsaMatrix=62}] run function asa_animator:diablos/anim/short_dash/keyframes/11
execute if entity @s[scores={AsaMatrix=62..76}] run tp @s ^0 ^-0.01333333 ^0.04666667
execute if entity @s[scores={AsaMatrix=77..}] run function asa_animator:diablos/anim/short_dash/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

# 高度調整
execute if entity @s[scores={AsaMatrix=21..51}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=21..51}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=1..20}] run function asa_animator:diablos/manager/rotate

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.8

execute if entity @s[scores={AsaMatrix=25..51}] run particle block sand ~ ~0.5 ~ 1 0.5 1 0 5

execute if entity @s[scores={AsaMatrix=25}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=33}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=41}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=51}] run playsound entity.iron_golem.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=48}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.5

execute if entity @s[scores={AsaMatrix=25..50}] run function asa_animator:diablos/anim/short_dash/events/damage
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:diablos/anim/short_dash/events/damage_head
