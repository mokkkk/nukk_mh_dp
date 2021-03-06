# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/sp_attack_3/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0.004166665 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0.004166668 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/2
execute if entity @s[scores={AsaMatrix=13..19}] run tp @s ^0 ^0.007142857 ^0
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/3
execute if entity @s[scores={AsaMatrix=20..27}] run tp @s ^0 ^0.006250001 ^0
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/4
execute if entity @s[scores={AsaMatrix=28..34}] run tp @s ^0 ^-0.01428572 ^0.02857143
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/5
execute if entity @s[scores={AsaMatrix=35..43}] run tp @s ^0 ^0.01111111 ^-0.01111111
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/6
execute if entity @s[scores={AsaMatrix=44..49}] run tp @s ^0 ^-0.02083334 ^-0.01666667
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/7
execute if entity @s[scores={AsaMatrix=50..55}] run tp @s ^0 ^0.004166668 ^0
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/8
execute if entity @s[scores={AsaMatrix=56..62}] run tp @s ^0 ^0.007142857 ^0
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/9
execute if entity @s[scores={AsaMatrix=63..70}] run tp @s ^0 ^0.006250001 ^0
execute if entity @s[scores={AsaMatrix=71}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/10
execute if entity @s[scores={AsaMatrix=71..77}] run tp @s ^0 ^-0.01428572 ^0.02857143
execute if entity @s[scores={AsaMatrix=78}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/11
execute if entity @s[scores={AsaMatrix=78..86}] run tp @s ^0 ^0.01111111 ^-0.01111111
execute if entity @s[scores={AsaMatrix=87}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/12
execute if entity @s[scores={AsaMatrix=87..111}] run tp @s ^0 ^-0.004 ^-0.004
execute if entity @s[scores={AsaMatrix=112}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/13
execute if entity @s[scores={AsaMatrix=112..126}] run tp @s ^0 ^-0.01333333 ^0
execute if entity @s[scores={AsaMatrix=127}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/14
execute if entity @s[scores={AsaMatrix=127..136}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=137}] run function asa_animator:nazuti/anim/sp_attack_3/keyframes/15
execute if entity @s[scores={AsaMatrix=137..151}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=152..}] run function asa_animator:nazuti/anim/sp_attack_3/end
execute as @e[type=armor_stand,tag=NazutiParts] run function #asa_matrix:animate
function asa_animator:nazuti/model

execute if entity @s[scores={AsaMatrix=1..25}] run function asa_animator:nazuti/manager/rotate
execute if entity @s[scores={AsaMatrix=44..67}] run function asa_animator:nazuti/manager/rotate

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.player.burp master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=1}] run playsound item.bucket.empty_lava master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=1}] run playsound item.bucket.empty_lava master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..77}] run playsound entity.player.breath master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..77}] run playsound entity.player.breath master @a ~ ~ ~ 2 0.9

execute if entity @s[scores={AsaMatrix=1}] run summon marker ~ ~ ~ {Tags:["NazutiMoveRotate"]}
execute if entity @s[scores={AsaMatrix=1}] run tp @e[type=marker,tag=NazutiMoveRotate,distance=0..5] ~ ~ ~ ~40 ~-5
execute if entity @s[scores={AsaMatrix=1}] store result score @e[type=marker,tag=NazutiMoveRotate,distance=0..5] AsaMatrix run data get entity @s Rotation[0] 100
execute if entity @s[scores={AsaMatrix=2..20}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~-3 ~-0.5
execute if entity @s[scores={AsaMatrix=24..27}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~2 ~-8
execute if entity @s[scores={AsaMatrix=28}] run data modify entity @e[type=marker,tag=NazutiMoveRotate,distance=0..5,limit=1] Rotation[0] set from entity @s Rotation[0]
execute if entity @s[scores={AsaMatrix=29..35}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~9
execute if entity @s[scores={AsaMatrix=36..44}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~-9


execute if entity @s[scores={AsaMatrix=44..49}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~-0.5
execute if entity @s[scores={AsaMatrix=50..62}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~-0.5
execute if entity @s[scores={AsaMatrix=70}] run data modify entity @e[type=marker,tag=NazutiMoveRotate,distance=0..5,limit=1] Rotation[0] set from entity @s Rotation[0]
execute if entity @s[scores={AsaMatrix=71..77}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~9
execute if entity @s[scores={AsaMatrix=78..85}] as @e[type=marker,tag=NazutiMoveRotate,distance=0..5] rotated as @s run tp @s ~ ~ ~ ~ ~-9

execute if entity @s[scores={AsaMatrix=86}] run kill @e[type=marker,tag=NazutiMoveRotate]

execute if entity @s[scores={AsaMatrix=2..85}] positioned as @e[type=armor_stand,tag=NazutiParts,tag=HeadU] positioned ^ ^1.2 ^1 rotated as @e[type=marker,tag=NazutiMoveRotate,distance=0..8] run function asa_animator:nazuti/anim/breath_fog_v/events/damage_f
execute if entity @s[scores={AsaMatrix=2..85}] run function asa_animator:nazuti/anim/breath_fog_v/events/rotate