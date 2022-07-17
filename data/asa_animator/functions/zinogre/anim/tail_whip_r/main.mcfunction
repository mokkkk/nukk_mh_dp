# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/tail_whip_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^0 ^0 ~8 ~
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/1
execute if entity @s[scores={AsaMatrix=9..20}] run tp @s ^0 ^0.004166667 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/2
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^-0.05 ^-0.01750001 ^0 ~-3 ~
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/3
execute if entity @s[scores={AsaMatrix=26..30}] run tp @s ^-0.1 ^0.4225 ^0 ~-18 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/4
execute if entity @s[scores={AsaMatrix=31..33}] run tp @s ^-0.08333334 ^-0.2958333 ^0 ~-18 ~
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/5
execute if entity @s[scores={AsaMatrix=34..36}] run tp @s ^-0.08333334 ^-0.4958333 ^0 ~-12 ~
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/6
execute if entity @s[scores={AsaMatrix=37..51}] run tp @s ^-0.2 ^0 ^0 ~-3 ~
execute if entity @s[scores={AsaMatrix=52}] run function asa_animator:zinogre/anim/tail_whip_r/keyframes/7
execute if entity @s[scores={AsaMatrix=52..66}] run tp @s ^0.07333334 ^0.02 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=67..}] run function asa_animator:zinogre/anim/tail_whip_r/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 移動
    execute if entity @s[scores={AsaMatrix=1}] at @s run function asa_animator:zinogre/anim/tail_whip_l/events/pos/set_pos
    execute if entity @s[scores={AsaMatrix=26..36}] run function asa_animator:zinogre/anim/tail_whip_l/events/pos/offset
    execute if entity @s[scores={AsaMatrix=52..66}] run function asa_animator:zinogre/manager/rotate

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=36..38}] run function asa_animator:zinogre/manager/particle/step
    execute if entity @s[scores={AsaMatrix=28}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.7
    execute if entity @s[scores={AsaMatrix=36}] run playsound entity.hoglin.step master @a ~ ~ ~ 3 0.7

# 攻撃
    execute if entity @s[scores={AsaMatrix=26..33}] at @e[type=armor_stand,tag=ZinogreParts,tag=Tail3] run function asa_animator:zinogre/anim/tail_whip_l/events/damage

# 状態更新
    execute if entity @s[scores={AsaMatrix=26}] run tag @s add IsFlying
    execute if entity @s[scores={AsaMatrix=36}] run tag @s remove IsFlying
    
# 高度調整
    execute if entity @s[scores={AsaMatrix=36..51}] at @s if block ~ ~0.2 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=36..51}] at @s unless block ~ ~0.4 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute if entity @s[scores={AsaMatrix=55..}] at @s if block ~ ~-0.1 ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=55..}] at @s unless block ~ ~0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~ ~ ~