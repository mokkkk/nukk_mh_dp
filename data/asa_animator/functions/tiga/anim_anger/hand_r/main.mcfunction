# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/hand_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^0 ^0.01666667 ^-0.008333334
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0 ^0.008333334 ^-0.008333334
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/2
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^-0.0625 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/3
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0 ^0.025 ~-12 ~
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/4
execute if entity @s[scores={AsaMatrix=21..23}] run tp @s ^0 ^0 ^-0.06666667 ~-12 ~
execute if entity @s[scores={AsaMatrix=24}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/5
execute if entity @s[scores={AsaMatrix=24..31}] run tp @s ^0 ^0 ^-0.0125 ~-4.8 ~
execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/6
execute if entity @s[scores={AsaMatrix=32..36}] run tp @s ^0 ^0.005 ^-0.2 ~-2 ~
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/7
execute if entity @s[scores={AsaMatrix=37..42}] run tp @s ^0 ^0.004166667 ^-0.2 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=43}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/8
execute if entity @s[scores={AsaMatrix=43..48}] run tp @s ^0 ^0.004166667 ^-0.1
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:tiga/anim_anger/hand_r/keyframes/9
execute if entity @s[scores={AsaMatrix=49..54}] run tp @s ^0 ^0.004166667 ^-0.01250001
execute if entity @s[scores={AsaMatrix=55..}] run function asa_animator:tiga/anim/hand_r/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=17}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=17..26}] run function asa_animator:tiga/anim/hand_l/events/damage
execute if entity @s[scores={AsaMatrix=42}] run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=53}] run playsound entity.iron_golem.step master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7