# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/move/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:reia/anim/move/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.06 ^0.8
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:reia/anim/move/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.06 ^0.8
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:reia/anim/move/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0.06 ^0.8
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:reia/anim/move/keyframes/3
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^-0.06 ^0.8
execute if entity @s[scores={AsaMatrix=21..}] run function asa_animator:reia/anim/move/end
execute as @e[type=armor_stand,tag=ReiaParts] run function #asa_matrix:animate
function asa_animator:reia/model

# 敵の方向を向く
function asa_animator:reia/manager/rotate

# 高度調整
execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 敵に十分近づいた場合，噛みつきに遷移
execute positioned ^ ^ ^4 if entity @e[distance=0..4,tag=ReiaAttackTarget] run function asa_animator:reia/anim/move/events/change

execute if entity @s[scores={AsaMatrix=6}] run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=16}] run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.7