# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/bite_turn_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:magara/anim/bite_turn_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:magara/anim/bite_turn_r/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:magara/anim/bite_turn_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..18}] run tp @s ^0 ^0 ^0 ~-2 ~
execute if entity @s[scores={AsaMatrix=19..22}] run tp @s ^0 ^0 ^0 ~-0.1 ~
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:magara/anim/bite_turn_r/keyframes/3
execute if entity @s[scores={AsaMatrix=23..27}] run tp @s ^0.3 ^0.06 ^0.8 ~14 ~
execute if entity @s[scores={AsaMatrix=28}] run function asa_animator:magara/anim/bite_turn_r/keyframes/4
execute if entity @s[scores={AsaMatrix=28..35}] run tp @s ^-0.05 ^0.0375 ^0.3 ~10 ~
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:magara/anim/bite_turn_r/keyframes/5
execute if entity @s[scores={AsaMatrix=36..44}] run tp @s ^-0.1 ^0.1111111 ^-0.2 ~4 ~
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:magara/anim/bite_turn_r/keyframes/6
execute if entity @s[scores={AsaMatrix=45..49}] run tp @s ^0.1 ^-0.28 ^-0.3 ~12 ~
execute if entity @s[scores={AsaMatrix=50}] run function asa_animator:magara/anim/bite_turn_r/keyframes/7
execute if entity @s[scores={AsaMatrix=50..55}] run tp @s ^0 ^-0.01666667 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=56}] run function asa_animator:magara/anim/bite_turn_r/keyframes/8
execute if entity @s[scores={AsaMatrix=56..65}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=66}] run function asa_animator:magara/anim/bite_turn_r/keyframes/9
execute if entity @s[scores={AsaMatrix=66..80}] run tp @s ^0 ^-0.006666667 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=81..}] run function asa_animator:magara/anim/bite_turn_r/end
execute as @e[type=armor_stand,tag=MagaraParts] run function #asa_matrix:animate
function asa_animator:magara/model

# 移動
    execute if entity @s[scores={AsaMatrix=1..6}] run function asa_animator:magara/manager/rotate
    execute if entity @s[scores={AsaMatrix=7..12}] run function asa_animator:magara/manager/rotate_lr

# 演出
    execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=22}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=27}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:magara/manager/particle/step
    execute if entity @s[scores={AsaMatrix=65}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={AsaMatrix=35}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5
    execute if entity @s[scores={AsaMatrix=55}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.5

# 攻撃
    execute if entity @s[scores={AsaMatrix=25..37}] positioned ^ ^ ^6 run function asa_animator:magara/anim/bite_turn_l/events/damage_b
    execute if entity @s[scores={AsaMatrix=45..55}] positioned ^ ^ ^-7 run function asa_animator:magara/anim/bite_turn_l/events/damage_t

# 設置
    execute if entity @s[scores={AsaMatrix=50}] positioned ^ ^ ^-7 run function asa_animator:magara/manager/attack/place_virus

# 高度調整
    execute if entity @s[scores={AsaMatrix=28}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=28}] at @s run tp @s ~ ~0.3 ~
    execute if entity @s[scores={AsaMatrix=49}] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=49}] at @s run tp @s ~ ~0.2 ~
    execute if entity @s[scores={AsaMatrix=55..65}] at @s if block ~ ~ ~ #asa_animator:no_collision run function asa_animator:zinogre/manager/check_ground
    execute if entity @s[scores={AsaMatrix=55..65}] at @s unless block ~ ~0.2 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
