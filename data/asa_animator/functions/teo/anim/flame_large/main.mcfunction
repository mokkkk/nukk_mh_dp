# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_large/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flame_large/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:teo/anim/flame_large/keyframes/1
execute if entity @s[scores={AsaMatrix=9..15}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:teo/anim/flame_large/keyframes/2
execute if entity @s[scores={AsaMatrix=16..34}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:teo/anim/flame_large/keyframes/3
execute if entity @s[scores={AsaMatrix=35..40}] run tp @s ^0 ^0 ^0.1 ~1 ~
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:teo/anim/flame_large/keyframes/4
execute if entity @s[scores={AsaMatrix=41..55}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:teo/anim/flame_large/keyframes/5
execute if entity @s[scores={AsaMatrix=56..65}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:teo/anim/flame_large/keyframes/6
execute if entity @s[scores={AsaMatrix=66..80}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:teo/anim/flame_large/keyframes/7
execute if entity @s[scores={AsaMatrix=81..88}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=89}] run function asa_animator:teo/anim/flame_large/keyframes/8
execute if entity @s[scores={AsaMatrix=89..93}] run tp @s ^0 ^0 ^0 ~0.2 ~
execute if entity @s[scores={AsaMatrix=94}] run function asa_animator:teo/anim/flame_large/keyframes/9
execute if entity @s[scores={AsaMatrix=94..105}] run tp @s ^0 ^0 ^-0.1 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=106}] run function asa_animator:teo/anim/flame_large/keyframes/10
execute if entity @s[scores={AsaMatrix=106..112}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=113}] run function asa_animator:teo/anim/flame_large/keyframes/11
execute if entity @s[scores={AsaMatrix=113..121}] run tp @s ^0 ^-0.01111111 ^0.02222222
execute if entity @s[scores={AsaMatrix=122}] run function asa_animator:teo/anim/flame_large/keyframes/12
execute if entity @s[scores={AsaMatrix=122..130}] run tp @s ^0 ^0.02222222 ^-0.02222222
execute if entity @s[scores={AsaMatrix=131}] run function asa_animator:teo/anim/flame_large/keyframes/13
execute if entity @s[scores={AsaMatrix=131..140}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=141}] run function asa_animator:teo/anim/flame_large/keyframes/14
execute if entity @s[scores={AsaMatrix=141..155}] run tp @s ^0 ^-0.006666667 ^0
execute if entity @s[scores={AsaMatrix=156..}] run function asa_animator:teo/anim/flame_large/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=9}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=40}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=80}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=105}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=..15}] run function asa_animator:teo/manager/rotate

execute if entity @s[scores={AsaMatrix=15}] run summon marker ~ ~ ~ {Tags:["TeoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=15}] facing entity @e[tag=TeoAttackTarget,limit=1] eyes run tp @e[type=marker,tag=TeoMoveRotate,distance=0..3] ~ ~ ~ ~45 ~3
execute if entity @s[scores={AsaMatrix=41..55}] as @e[type=marker,tag=TeoMoveRotate,distance=0..3] rotated as @s run tp @s ~ ~ ~ ~-6.3 ~
execute if entity @s[scores={AsaMatrix=56..65}] as @e[type=marker,tag=TeoMoveRotate,distance=0..3] rotated as @s run tp @s ~ ~ ~ ~-1 ~
execute if entity @s[scores={AsaMatrix=66..80}] as @e[type=marker,tag=TeoMoveRotate,distance=0..3] rotated as @s run tp @s ~ ~ ~ ~6.5 ~
execute if entity @s[scores={AsaMatrix=81}] run kill @e[type=marker,tag=TeoMoveRotate]

execute if entity @s[scores={AsaMatrix=125..140}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.9
execute if entity @s[scores={AsaMatrix=125..140}] run playsound entity.hoglin.angry master @a ~ ~ ~ 2 1.1
execute if entity @s[scores={AsaMatrix=125..140}] run playsound entity.polar_bear.warning master @a ~ ~ ~ 3 0.7

# 炎纏い
    execute if entity @s[scores={AsaMatrix=41..81}] positioned as @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.2 ^1 rotated as @e[type=marker,tag=TeoMoveRotate,distance=0..8] run function asa_animator:teo/anim/flame_large/events/damage_f