# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/dash/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/dash/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0 ^1
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:magara/anim/dash/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^0.1 ^1
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:magara/anim/dash/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^-0.125 ^1
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:magara/anim/dash/keyframes/3
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^0.025 ^1
execute if entity @s[scores={AsaMatrix=17..}] run function asa_animator:magara/anim/dash/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:magara/manager/particle/step

# 攻撃
    execute positioned ^ ^ ^2 run function asa_animator:magara/anim/dash/events/damage

# 高度調整
    execute if entity @s[scores={AsaMatrix=4}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
    execute if entity @s[scores={AsaMatrix=4}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=4}] at @s run tp @s ~ ~0.1 ~
    
# 停止
    execute if entity @e[type=marker,tag=MagaraDashTarget,distance=0..10] run scoreboard players set #mhdp_magara_dash_count AsaMatrix 2
    execute if entity @e[type=marker,tag=MagaraDashTarget,distance=0..10] run kill @e[type=marker,tag=MagaraDashTarget,distance=0..10]
    execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_magara_dash_count AsaMatrix matches ..0 run function asa_animator:magara/anim/dash/events/change
