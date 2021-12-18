# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/bite_2/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim/bite_2/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim/bite_2/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0.01428571 ^-0.01428571
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim/bite_2/keyframes/2
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^0 ^-0.05
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim/bite_2/keyframes/3
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0.025 ^0.075
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim/bite_2/keyframes/4
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:tiga/anim/bite_2/keyframes/5
execute if entity @s[scores={AsaMatrix=25..32}] run tp @s ^0 ^0 ^-0.0375 ~0.5 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:tiga/anim/bite_2/keyframes/6
execute if entity @s[scores={AsaMatrix=33..36}] run tp @s ^0 ^0 ^0.075
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:tiga/anim/bite_2/keyframes/7
execute if entity @s[scores={AsaMatrix=37..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:tiga/anim/bite_2/keyframes/8
execute if entity @s[scores={AsaMatrix=41..50}] run tp @s ^0 ^0 ^0.1
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:tiga/anim/bite_2/keyframes/9
execute if entity @s[scores={AsaMatrix=51..65}] run tp @s ^0 ^-0.006666667 ^-0.05 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=66..}] run function asa_animator:tiga/anim/bite_2/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

# 敵の方向を向く
execute if entity @s[scores={AsaMatrix=1..8}] run function asa_animator:tiga/manager/rotate

execute if entity @s[scores={AsaMatrix=16..24}] unless entity @e[distance=0..5,tag=TigaAttackTarget] at @s run tp @s ^ ^ ^0.6
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=16}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=16..24}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:tiga/anim/bite/events/damage

execute if entity @s[scores={AsaMatrix=25..31}] unless entity @e[distance=0..5,tag=TigaAttackTarget] at @s run tp @s ^ ^ ^0.3

execute if entity @s[scores={AsaMatrix=32..40}] unless entity @e[distance=0..5,tag=TigaAttackTarget] at @s run tp @s ^ ^ ^0.6
execute if entity @s[scores={AsaMatrix=32}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=32..40}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:tiga/anim/bite/events/damage

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.7
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7