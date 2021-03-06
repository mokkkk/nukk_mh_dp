# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_spin/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/dash_spin/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.025 ^-0.03
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim/dash_spin/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^-0.085 ^-0.09
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:tiga/anim/dash_spin/keyframes/2
execute if entity @s[scores={AsaMatrix=11..20}] run tp @s ^0 ^0 ^-0.02
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim/dash_spin/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0.04 ^0.06 ~-22 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:tiga/anim/dash_spin/keyframes/4
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^0 ^0.02 ^0 ~-22 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim/dash_spin/keyframes/5
execute if entity @s[scores={AsaMatrix=31..35}] run tp @s ^0 ^0 ^0 ~-18 ~
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^0 ^0 ~-5 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:tiga/anim/dash_spin/keyframes/6
execute if entity @s[scores={AsaMatrix=46..47}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:tiga/anim/dash_spin/keyframes/7
execute if entity @s[scores={AsaMatrix=48..60}] run tp @s ^0 ^0 ^0.03846154
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:tiga/anim/dash_spin/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=1..20}] at @s run tp @s ^ ^ ^0.5

execute if entity @s[scores={AsaMatrix=21}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=21..45}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=21..35}] positioned ^ ^ ^5 run function asa_animator:tiga/anim/spin/events/damage
execute unless entity @s[tag=DestroyTail] if entity @s[scores={AsaMatrix=21..35}] positioned ^ ^ ^-5 run function asa_animator:tiga/anim/spin/events/damage
execute if entity @s[tag=DestroyTail] if entity @s[scores={AsaMatrix=21..35}] positioned ^ ^ ^-3 run function asa_animator:tiga/anim/spin/events/damage


execute if entity @s[scores={AsaMatrix=19}] run summon marker ~ ~ ~ {Tags:["TigaMoveRotate"]}
execute if entity @s[scores={AsaMatrix=19}] run tp @e[type=marker,tag=TigaMoveRotate,distance=0..3] ~ ~ ~ ~ 0
execute if entity @s[scores={AsaMatrix=21..35}] at @s rotated as @e[type=marker,tag=TigaMoveRotate] run tp @s ^ ^ ^0.8
execute if entity @s[scores={AsaMatrix=36..50}] at @s rotated as @e[type=marker,tag=TigaMoveRotate] run tp @s ^ ^ ^0.3

execute if entity @s[scores={AsaMatrix=10}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=11}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=11}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=11}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7