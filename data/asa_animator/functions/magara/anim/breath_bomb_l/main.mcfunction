# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/breath_bomb_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/1
execute if entity @s[scores={AsaMatrix=11..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/2
execute if entity @s[scores={AsaMatrix=36..39}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=40}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/3
execute if entity @s[scores={AsaMatrix=40..47}] run tp @s ^0 ^-0.025 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/4
execute if entity @s[scores={AsaMatrix=48..54}] run tp @s ^0 ^0.01428571 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=55}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/5
execute if entity @s[scores={AsaMatrix=55..63}] run tp @s ^0 ^0.01111111 ^0 ~0.3 ~
execute if entity @s[scores={AsaMatrix=64}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/6
execute if entity @s[scores={AsaMatrix=64..78}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=79}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/7
execute if entity @s[scores={AsaMatrix=79..93}] run tp @s ^0 ^-0.006666667 ^-0.16
execute if entity @s[scores={AsaMatrix=94}] run function asa_animator:magara/anim/breath_bomb_l/keyframes/8
execute if entity @s[scores={AsaMatrix=94..103}] run tp @s ^0 ^0.01 ^0
execute if entity @s[scores={AsaMatrix=104..}] run function asa_animator:magara/anim/breath_bomb_l/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..16}] run function asa_animator:magara/manager/rotate
    execute if entity @s[scores={AsaMatrix=1..8}] if entity @e[tag=MagaraAttackTarget,distance=..8.0] at @s run tp @s ^ ^ ^-0.8
    execute if entity @s[scores={AsaMatrix=36..43}] unless entity @e[tag=MagaraAttackTarget,distance=..8.0] at @s run tp @s ^ ^ ^0.5

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=35}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=78}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=1..54}] at @e[type=armor_stand,tag=MagaraParts,tag=HeadU,distance=..20] positioned ^ ^1.3 ^0.8 run particle dust 0.325 0.239 0.4 3 ~ ~ ~ 0.3 0.3 0.3 0 1
    execute if entity @s[scores={AsaMatrix=1}] run playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=78}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5

# 攻撃
    execute if entity @s[scores={AsaMatrix=42}] positioned ^-5 ^2 ^6.5 run function asa_animator:magara/anim/breath_bomb_l/events/damage
    execute if entity @s[scores={AsaMatrix=47}] positioned ^ ^2 ^8 run function asa_animator:magara/anim/breath_bomb_l/events/damage
    execute if entity @s[scores={AsaMatrix=52}] positioned ^5 ^2 ^6.5 run function asa_animator:magara/anim/breath_bomb_l/events/damage
    
# 高度調整
    execute if entity @s[scores={AsaMatrix=44..}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=44..}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
