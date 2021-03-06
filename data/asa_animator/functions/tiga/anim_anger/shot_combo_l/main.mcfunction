# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/shot_combo_l/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/0
execute if entity @s[scores={AsaMatrix=1..3}] run tp @s ^0 ^0.03333334 ^-0.03333334
execute if entity @s[scores={AsaMatrix=4}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/1
execute if entity @s[scores={AsaMatrix=4..12}] run tp @s ^0 ^0.01111111 ^-0.02222222
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/2
execute if entity @s[scores={AsaMatrix=13..15}] run tp @s ^0 ^-0.06666667 ^0.06666667
execute if entity @s[scores={AsaMatrix=16}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/3
execute if entity @s[scores={AsaMatrix=16..19}] run tp @s ^0 ^-0.025 ^0.025
execute if entity @s[scores={AsaMatrix=20}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/4
execute if entity @s[scores={AsaMatrix=20..22}] run tp @s ^0 ^0 ^0.06666667
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/5
execute if entity @s[scores={AsaMatrix=23..30}] run tp @s ^0 ^0 ^0.025
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:tiga/anim_anger/shot_combo_l/keyframes/6
execute if entity @s[scores={AsaMatrix=31..43}] run tp @s ^0 ^0.007692308 ^-0.06923077
execute if entity @s[scores={AsaMatrix=44..}] run function asa_animator:tiga/anim/shot_combo_l/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=1..8}] run function asa_animator:tiga/manager/rotate
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=15}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=19}] run playsound entity.wither.break_block master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=15..19}] positioned ^3 ^ ^5 run function asa_animator:tiga/anim/shot_l/events/damage
execute if entity @s[scores={AsaMatrix=19}] positioned ^3 ^ ^5 facing entity @e[tag=TigaAttackTarget] eyes run function asa_animator:tiga/anim/shot_l/events/shot/start