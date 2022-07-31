# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/end_thunder_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0.5 ^0.03 ^-0.06 ~-2 ~
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0.2 ^0.03 ^-0.06 ~-2 ~
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0.05 ^0.06 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/3
execute if entity @s[scores={AsaMatrix=16..23}] run tp @s ^0 ^-0.1 ^0.05
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/4
execute if entity @s[scores={AsaMatrix=24..42}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/5
execute if entity @s[scores={AsaMatrix=43..56}] run tp @s ^0 ^0.007142857 ^0.007142857 ~0.5 ~
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:zinogre/anim/end_thunder_r/keyframes/6
execute if entity @s[scores={AsaMatrix=57..70}] run tp @s ^0 ^0.007142857 ^0.007142857 ~0.5 ~
execute if entity @s[scores={AsaMatrix=71..}] run function asa_animator:zinogre/anim/end_thunder_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.beacon.deactivate master @a ~ ~ ~ 2 1.5
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=23}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=42}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=1..10}] run particle end_rod ~ ~5 ~ 2 2 2 0.5 20

# 高度調整
    execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
    execute if entity @s[scores={AsaMatrix=1}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=23..42}] if block ~ ~0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=23..42}] unless block ~ ~0.3 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
    execute if entity @s[scores={AsaMatrix=56..}] if block ~ ~-0.2 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=56..}] unless block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~