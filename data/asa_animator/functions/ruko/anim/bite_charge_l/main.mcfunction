# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/bite_charge_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/2
execute if entity @s[scores={AsaMatrix=13..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/3
execute if entity @s[scores={AsaMatrix=21..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/4
execute if entity @s[scores={AsaMatrix=26..28}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/5
execute if entity @s[scores={AsaMatrix=29..38}] run tp @s ^0 ^0 ^0 ~-18 ~
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/6
execute if entity @s[scores={AsaMatrix=39..43}] run tp @s ^0 ^0 ^0 ~-1 ~
execute if entity @s[scores={AsaMatrix=44}] run function asa_animator:ruko/anim/bite_charge_l/keyframes/7
execute if entity @s[scores={AsaMatrix=44..58}] run tp @s ^0 ^0 ^0 ~0.5 ~
execute if entity @s[scores={AsaMatrix=59..}] run function asa_animator:ruko/anim/bite_charge_l/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run playsound item.firecharge.use master @a ~ ~ ~ 2 1
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=1..20}] at @e[type=armor_stand,tag=RukoParts,tag=HeadU] positioned ^ ^1.4 ^0.9 run particle dust 0.314 0 0 3 ~ ~ ~ 0.4 0.4 0.4 0 1

execute if entity @s[scores={AsaMatrix=21}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=21..25}] if entity @e[tag=RukoAttackTarget,distance=0..6] run tp @s ^-0.3 ^ ^
execute if entity @s[scores={AsaMatrix=27}] run summon marker ~ ~ ~ {Tags:["RukoMoveRotate"]}
execute if entity @s[scores={AsaMatrix=27}] run tp @e[type=marker,tag=RukoMoveRotate,distance=0..3] ~ ~ ~ ~35 0
execute if entity @s[scores={AsaMatrix=27..30}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 2
execute if entity @s[scores={AsaMatrix=27..30}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 1.7
execute if entity @s[scores={AsaMatrix=28..40}] as @e[type=marker,tag=RukoMoveRotate,distance=0..3] at @s run tp @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={AsaMatrix=28..40}] at @e[type=marker,tag=RukoMoveRotate,distance=0..3] run function asa_animator:ruko/anim/bite_charge_l/events/damage
execute if entity @s[scores={AsaMatrix=41}] run kill @e[type=marker,tag=RukoMoveRotate,distance=0..3]