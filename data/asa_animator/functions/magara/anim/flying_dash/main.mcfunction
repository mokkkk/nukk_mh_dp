# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/flying_dash/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/flying_dash/keyframes/0
execute if entity @s[scores={AsaMatrix=1}] facing entity @e[tag=MagaraAttackTarget,sort=nearest,limit=1] feet run tp @s ^0 ^0 ^-0.0125 ~ 0
execute if entity @s[scores={AsaMatrix=2..6}] run tp @s ^0 ^0 ^0 ~36 ~
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:magara/anim/flying_dash/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0 ^0 ~24 ~
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:magara/anim/flying_dash/keyframes/2
execute if entity @s[scores={AsaMatrix=13..22}] run tp @s ^0 ^0 ^0 ~4 ~
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:magara/anim/flying_dash/keyframes/3
execute if entity @s[scores={AsaMatrix=23..29}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:magara/anim/flying_dash/keyframes/4
execute if entity @s[scores={AsaMatrix=30..39}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:magara/anim/flying_dash/keyframes/5
execute if entity @s[scores={AsaMatrix=40..44}] run tp @s ^0 ^0.02 ^0
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:magara/anim/flying_dash/keyframes/6
execute if entity @s[scores={AsaMatrix=45..48}] run tp @s ^0 ^0.1 ^0.9 ~0.5 ~
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:magara/anim/flying_dash/keyframes/7
execute if entity @s[scores={AsaMatrix=49..52}] run tp @s ^0 ^-0.125 ^0.9
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:magara/anim/flying_dash/keyframes/8
execute if entity @s[scores={AsaMatrix=53..56}] run tp @s ^0 ^0.025 ^0.9 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=57}] run function asa_animator:magara/anim/flying_dash/keyframes/9
execute if entity @s[scores={AsaMatrix=57..62}] run tp @s ^0 ^-0.05 ^0.7
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:magara/anim/flying_dash/keyframes/10
execute if entity @s[scores={AsaMatrix=63..72}] run tp @s ^0 ^0 ^0.2
execute if entity @s[scores={AsaMatrix=73}] run function asa_animator:magara/anim/flying_dash/keyframes/11
execute if entity @s[scores={AsaMatrix=73..85}] run tp @s ^0 ^0.007692308 ^0.05 ~0.5 ~
execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:magara/anim/flying_dash/keyframes/12
execute if entity @s[scores={AsaMatrix=86..100}] run tp @s ^0 ^0.006666667 ^0.1 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=101..}] run function asa_animator:magara/anim/flying_dash/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 移動
    execute if entity @s[scores={AsaMatrix=1}] run summon marker ~ ~ ~ {Tags:["MagaraMoveRotate"]}
    execute if entity @s[scores={AsaMatrix=1}] run tp @e[type=marker,tag=MagaraMoveRotate,distance=0..3] ~ ~ ~ ~ 0
    execute if entity @s[scores={AsaMatrix=2..10}] at @s rotated as @e[type=marker,tag=MagaraMoveRotate] run tp @s ^ ^ ^-0.7
    execute if entity @s[scores={AsaMatrix=11..17}] at @s rotated as @e[type=marker,tag=MagaraMoveRotate] run tp @s ^ ^ ^-0.3
    execute if entity @s[scores={AsaMatrix=18..23}] at @s rotated as @e[type=marker,tag=MagaraMoveRotate] run tp @s ^ ^ ^-0.05
    execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/flying_dash/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=23..44}] run function asa_animator:magara/anim/flying_dash/events/pos/offset

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=43}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=51}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=62}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=62}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=62..73}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:magara/manager/model/change_to_normal

# 攻撃
    execute if entity @s[scores={AsaMatrix=23..54}] run function asa_animator:magara/anim/flying_dash/events/damage

# 高度調整
    execute if entity @s[scores={AsaMatrix=57..73}] at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
    execute if entity @s[scores={AsaMatrix=57..73}] at @s positioned ~ ~5 ~ run function asa_animator:magara/manager/check_ground
    execute if entity @s[scores={AsaMatrix=57..73}] at @s run tp @s ~ ~-0.2 ~
