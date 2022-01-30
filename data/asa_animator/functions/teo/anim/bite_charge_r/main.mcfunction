# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bite_charge_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:teo/anim/bite_charge_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:teo/anim/bite_charge_r/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:teo/anim/bite_charge_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:teo/anim/bite_charge_r/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:teo/anim/bite_charge_r/keyframes/4
execute if entity @s[scores={AsaMatrix=26..28}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:teo/anim/bite_charge_r/keyframes/5
execute if entity @s[scores={AsaMatrix=29..33}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:teo/anim/bite_charge_r/keyframes/6
execute if entity @s[scores={AsaMatrix=34..38}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:teo/anim/bite_charge_r/keyframes/7
execute if entity @s[scores={AsaMatrix=39..43}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:teo/anim/bite_charge_r/keyframes/8
execute if entity @s[scores={AsaMatrix=44..58}] run tp @s ^0 ^0 ^0 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=59..}] run function asa_animator:teo/anim/bite_charge_r/end
execute as @e[type=armor_stand,tag=TeoParts] run function #asa_matrix:animate
function asa_animator:teo/model

execute if entity @s[scores={AsaMatrix=1}] run playsound item.firecharge.use master @a ~ ~ ~ 2 1
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=21..25}] run function asa_animator:teo/manager/rotate

execute if entity @s[scores={AsaMatrix=27}] run summon marker ~ ~ ~ {Tags:["TeoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=27}] run tp @e[type=marker,tag=TeoMoveRotate,distance=0..3] ~ ~ ~ ~-35 0
execute if entity @s[scores={AsaMatrix=28..40}] as @e[type=marker,tag=TeoMoveRotate,distance=0..3] at @s run tp @s ~ ~ ~ ~7 ~
execute if entity @s[scores={AsaMatrix=41}] run kill @e[type=marker,tag=TeoMoveRotate,distance=0..3]

# 炎纏い
    execute if entity @s[tag=IsFire,scores={AsaMatrix=1..20}] at @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.3 ^0.6 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 5
    execute if entity @s[scores={AsaMatrix=28..40}] at @e[type=marker,tag=TeoMoveRotate,distance=0..3] positioned ^ ^2 ^7 run function asa_animator:teo/anim/bite_charge_l/events/damage_f

# 粉塵纏い
    # execute if entity @s[tag=IsFire,scores={AsaMatrix=1..20}] at @e[type=armor_stand,tag=TeoParts,tag=HeadU] positioned ^ ^1.4 ^0.6 run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 1
    # execute if entity @s[scores={AsaMatrix=28..40}] at @e[type=marker,tag=TeoMoveRotate,distance=0..3] positioned ^ ^2 ^7 run function asa_animator:teo/anim/bite_charge_l/events/damage
