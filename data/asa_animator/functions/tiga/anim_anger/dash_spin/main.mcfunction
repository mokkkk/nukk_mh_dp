# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/dash_spin/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^0.03125 ^-0.0375
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^-0.10625 ^-0.1125
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/2
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0 ^-0.025
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/3
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0.05 ^0.075 ~-26.2 ~
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/4
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^0.025 ^0 ~-26.2 ~
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/5
execute if entity @s[scores={AsaMatrix=25..30}] run tp @s ^0 ^0 ^0 ~-21.6 ~
execute if entity @s[scores={AsaMatrix=31..37}] run tp @s ^0 ^0 ^0 ~-6 ~
execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/6
execute if entity @s[scores={AsaMatrix=38..39}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:tiga/anim_anger/dash_spin/keyframes/7
execute if entity @s[scores={AsaMatrix=40..49}] run tp @s ^0 ^0 ^0.05
execute if entity @s[scores={AsaMatrix=50..}] run function asa_animator:tiga/anim/dash_spin/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=1..16}] at @s run tp @s ^ ^ ^0.6

execute if entity @s[scores={AsaMatrix=17}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=17..37}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=17..30}] positioned ^ ^ ^5 run function asa_animator:tiga/anim/spin/events/damage
execute if entity @s[scores={AsaMatrix=17..30}] positioned ^ ^ ^-5 run function asa_animator:tiga/anim/spin/events/damage

execute if entity @s[scores={AsaMatrix=15}] run summon marker ~ ~ ~ {Tags:["TigaMoveRotate"]}
execute if entity @s[scores={AsaMatrix=15}] run tp @e[type=marker,tag=TigaMoveRotate,distance=0..3] ~ ~ ~ ~ 0
execute if entity @s[scores={AsaMatrix=17..30}] at @s rotated as @e[type=marker,tag=TigaMoveRotate] run tp @s ^ ^ ^0.96
execute if entity @s[scores={AsaMatrix=31..42}] at @s rotated as @e[type=marker,tag=TigaMoveRotate] run tp @s ^ ^ ^0.36

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=9}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=9}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=9}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7