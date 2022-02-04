# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_tackle_combo/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0.3125 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^-0.2875 ^-0.0125
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/2
execute if entity @s[scores={AsaMatrix=17..23}] run tp @s ^0 ^-0.02857143 ^0.01428571
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/3
execute if entity @s[scores={AsaMatrix=24..38}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/4
execute if entity @s[scores={AsaMatrix=39..45}] run tp @s ^0 ^0.02857143 ^0 ~9 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:teo/anim/flying_tackle_combo/keyframes/5
execute if entity @s[scores={AsaMatrix=46..53}] run tp @s ^0.025 ^-0.025 ^0 ~9 ~
execute if entity @s[scores={AsaMatrix=54..}] run function asa_animator:teo/anim/flying_tackle_combo/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=..16}] run function asa_animator:teo/manager/rotate
execute if entity @s[scores={AsaMatrix=23..38}] run tp @s ^ ^ ^1.3
execute if entity @s[scores={AsaMatrix=23..38}] positioned ^ ^ ^2 run function asa_animator:teo/anim/jump/events/damage

execute if entity @s[scores={AsaMatrix=23..38}] at @s run tp @s ~ ~4 ~
execute if entity @s[scores={AsaMatrix=23..38}] at @s run function asa_animator:zinogre/manager/check_ground
execute if entity @s[scores={AsaMatrix=23..38}] at @s run tp @s ~ ~0.75 ~

execute if entity @s[scores={AsaMatrix=38}] run function asa_animator:teo/anim/flying_tackle/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=39..50}] run function asa_animator:teo/anim/flying_tackle/events/pos/offset

execute if entity @s[scores={AsaMatrix=46..53}] run function asa_animator:teo/manager/particle/step
execute if entity @s[scores={AsaMatrix=46..}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute if entity @s[scores={AsaMatrix=46..}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

execute if entity @s[scores={AsaMatrix=36}] run summon marker ~ ~ ~ {Tags:["TeoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=36}] run tp @e[type=marker,tag=TeoMoveRotate,distance=0..3] ~ ~ ~ ~ 0
execute if entity @s[scores={AsaMatrix=46..55}] at @s rotated as @e[type=marker,tag=TeoMoveRotate] run tp @s ^ ^ ^0.2

# 炎纏いlv1-
    execute if entity @s[tag=IsFire,scores={AsaMatrix=46..53}] if score #mhdp_teo_lv AsaMatrix matches 1.. run particle lava ~ ~ ~ 2 0.1 2 0 5