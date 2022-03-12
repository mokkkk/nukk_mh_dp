# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/bite/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/bite/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^-0.025 ^0
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:tiga/anim_anger/bite/keyframes/1
execute if entity @s[scores={AsaMatrix=5..10}] run tp @s ^0 ^0.01666667 ^-0.01666667
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:tiga/anim_anger/bite/keyframes/2
execute if entity @s[scores={AsaMatrix=11..13}] run tp @s ^0 ^0.03333334 ^-0.06666667
execute if entity @s[scores={AsaMatrix=14}] run function asa_animator:tiga/anim_anger/bite/keyframes/3
execute if entity @s[scores={AsaMatrix=14..16}] run tp @s ^0 ^0 ^0.1
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim_anger/bite/keyframes/4
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim_anger/bite/keyframes/5
execute if entity @s[scores={AsaMatrix=21..29}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:tiga/anim_anger/bite/keyframes/6
execute if entity @s[scores={AsaMatrix=30..41}] run tp @s ^0 ^-0.008333334 ^0
execute if entity @s[scores={AsaMatrix=42..}] run function asa_animator:tiga/anim/bite/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute at @s positioned ~ ~5 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground

# 敵の方向を向く
execute if entity @s[scores={AsaMatrix=1..6}] run function asa_animator:tiga/manager/rotate

execute if entity @s[scores={AsaMatrix=13..20}] unless entity @e[tag=TigaAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^0.7
execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=12}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=13..20}] run particle block grass_block ~ ~ ~ 1 0.1 1 0 3
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:tiga/anim/bite/events/damage

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=1}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7