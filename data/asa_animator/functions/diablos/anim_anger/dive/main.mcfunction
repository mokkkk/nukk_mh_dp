# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dive/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:diablos/anim/dive/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:diablos/anim/dive/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:diablos/anim/dive/keyframes/2
execute if entity @s[scores={AsaMatrix=11..15}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:diablos/anim/dive/keyframes/3
execute if entity @s[scores={AsaMatrix=16..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:diablos/anim/dive/keyframes/4
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^-0.24 ^0.18
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:diablos/anim/dive/keyframes/5
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^-0.36 ^0.42
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:diablos/anim/dive/keyframes/6
execute if entity @s[scores={AsaMatrix=31..45}] run tp @s ^0 ^-0.6666667 ^0.2
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:diablos/anim/dive/keyframes/7
execute if entity @s[scores={AsaMatrix=46..50}] run tp @s ^0 ^0 ^-1.2
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:diablos/anim/dive/keyframes/8
execute if entity @s[scores={AsaMatrix=51..120}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=121..}] run function asa_animator:diablos/anim/dive/end
execute as @e[type=armor_stand,tag=DiablosParts] run function #asa_matrix:animate
function asa_animator:diablos/model

execute if entity @s[scores={AsaMatrix=15}] run tag @s add InGround

# パーティクル
execute if entity @s[scores={AsaMatrix=1}] positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["DiablosDiveParticle"]}
execute if entity @s[scores={AsaMatrix=1..55}] positioned as @e[type=marker,tag=DiablosDiveParticle] run particle block sand ~ ~ ~ 2 0 2 0 10
execute if entity @s[scores={AsaMatrix=55}] run kill @e[type=marker,tag=DiablosDiveParticle]

# ターゲットと一定距離を保つ
execute if entity @s[scores={AsaMatrix=55}] at @s run tp @s ~ ~14 ~
execute if entity @s[scores={AsaMatrix=55}] as @e[type=armor_stand,tag=DiablosParts] run function asa_animator:diablos/anim/normal/dive/events/change_to_air
execute if entity @s[scores={AsaMatrix=60..119}] run particle block sand ~ ~0.5 ~ 2 0 2 0 5
execute if entity @s[scores={AsaMatrix=60..119}] at @s facing entity @e[tag=DiablosAttackTarget,limit=1] feet if entity @e[tag=DiablosAttackTarget,distance=..22] rotated ~ 0 run tp @s ^ ^3 ^-0.5 ~ 0
execute if entity @s[scores={AsaMatrix=60..119}] at @s facing entity @e[tag=DiablosAttackTarget,limit=1] feet unless entity @e[tag=DiablosAttackTarget,distance=..22] rotated ~ 0 run tp @s ^ ^3 ^0.5 ~ 0
execute if entity @s[scores={AsaMatrix=60..119}] at @s rotated ~ 0 positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=120}] at @s run tp @s ~ ~-12 ~

# 効果音
execute if entity @s[scores={AsaMatrix=1}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=11}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=21}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=31}] run playsound block.soul_sand.break master @a ~ ~ ~ 3 0.7