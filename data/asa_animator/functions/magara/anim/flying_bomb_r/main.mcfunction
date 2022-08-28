# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/flying_bomb_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/1
execute if entity @s[scores={AsaMatrix=9..16}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/2
execute if entity @s[scores={AsaMatrix=17..36}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/3
execute if entity @s[scores={AsaMatrix=37..42}] run tp @s ^0 ^-0.2 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/4
execute if entity @s[scores={AsaMatrix=43..52}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=53}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/5
execute if entity @s[scores={AsaMatrix=53..62}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=63}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/6
execute if entity @s[scores={AsaMatrix=63..74}] run tp @s ^0 ^0.1 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=75}] run function asa_animator:magara/anim/flying_bomb_r/keyframes/7
execute if entity @s[scores={AsaMatrix=75..86}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=87..}] run function asa_animator:magara/anim/flying_bomb_r/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..22}] run function asa_animator:magara/manager/rotate
    execute if entity @s[scores={AsaMatrix=1}] at @s run function asa_animator:magara/anim/flying_bomb_l/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=2..17}] at @s run function asa_animator:magara/anim/flying_bomb_l/events/pos/offset
    execute if entity @s[scores={AsaMatrix=37..42}] positioned ^ ^ ^-4 unless entity @e[tag=MagaraAttackTarget,distance=..8.0] at @s run tp @s ^ ^ ^0.8
    execute if entity @s[scores={AsaMatrix=43..52}] positioned ^ ^ ^-4 unless entity @e[tag=MagaraAttackTarget,distance=..8.0] at @s run tp @s ^ ^ ^0.3

# 演出
    execute if entity @s[scores={AsaMatrix=1..54}] at @e[type=armor_stand,tag=MagaraParts,tag=HeadU,distance=..20] positioned ^ ^1.3 ^0.8 run particle dust 0.325 0.239 0.4 3 ~ ~ ~ 0.3 0.3 0.3 0 1
    execute if entity @s[scores={AsaMatrix=1}] run playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=8}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=74}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5

# 攻撃
    execute if entity @s[scores={AsaMatrix=42}] positioned ^5 ^ ^5.5 run function asa_animator:magara/anim/breath_bomb_l/events/damage
    execute if entity @s[scores={AsaMatrix=47}] positioned ^ ^ ^7 run function asa_animator:magara/anim/breath_bomb_l/events/damage
    execute if entity @s[scores={AsaMatrix=52}] positioned ^-5 ^ ^5.5 run function asa_animator:magara/anim/breath_bomb_l/events/damage

execute if entity @s[scores={AsaMatrix=86}] run function asa_animator:magara/manager/model/change_to_normal