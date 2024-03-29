# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim_anger/dive_jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^2.8 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0.8571429 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/2
execute if entity @s[scores={AsaMatrix=13..21}] run tp @s ^0 ^-1 ^0
execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/3
execute if entity @s[scores={AsaMatrix=22..28}] run tp @s ^0 ^-0.01428571 ^0 ~2 ~
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/4
execute if entity @s[scores={AsaMatrix=29..37}] run tp @s ^0 ^-0.01111111 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/5
execute if entity @s[scores={AsaMatrix=38..45}] run tp @s ^0 ^0.025 ^0 ~-0.8 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/6
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^0 ^0 ~0.4 ~
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/7
execute if entity @s[scores={AsaMatrix=61..70}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:diablos/anim_anger/dive_jump/keyframes/8
execute if entity @s[scores={AsaMatrix=71..90}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=91..}] run function asa_animator:diablos/anim_anger/dive_jump/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:diablos/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=5}] positioned ~ ~3 ~ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute if entity @s[scores={AsaMatrix=8}] run playsound entity.wither.break_block master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=22..60}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22..70}] run particle block sand ~ ~0.1 ~ 1 0 1 0 5

# 高度調整
execute if entity @s[scores={AsaMatrix=..21}] at @s run tp @s ^ ^ ^1
execute if entity @s[scores={AsaMatrix=22..50}] at @s run tp @s ^ ^ ^0.5
execute if entity @s[scores={AsaMatrix=51..60}] at @s run tp @s ^ ^ ^0.35
execute if entity @s[scores={AsaMatrix=61..70}] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={AsaMatrix=22..}] at @s positioned ~ ~10 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=22..}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

# 攻撃
execute if entity @s[scores={AsaMatrix=..60}] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,distance=0..5] run function asa_animator:diablos/anim_anger/dash/events/damage