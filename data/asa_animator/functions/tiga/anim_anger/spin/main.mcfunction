# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/spin/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/spin/keyframes/0
execute if entity @s[scores={AsaMatrix=1..4}] run tp @s ^0 ^-0.006250001 ^-0.03125
execute if entity @s[scores={AsaMatrix=5}] run function asa_animator:tiga/anim_anger/spin/keyframes/1
execute if entity @s[scores={AsaMatrix=5..8}] run tp @s ^0 ^-0.03125 ^-0.03125
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:tiga/anim_anger/spin/keyframes/2
execute if entity @s[scores={AsaMatrix=9..12}] run tp @s ^0 ^-0.006249998 ^-0.03125
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim_anger/spin/keyframes/3
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^-0.03125 ^-0.05625001
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim_anger/spin/keyframes/4
execute if entity @s[scores={AsaMatrix=17..24}] run tp @s ^0 ^0 ^-0.025
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:tiga/anim_anger/spin/keyframes/5
execute if entity @s[scores={AsaMatrix=25..29}] run tp @s ^0.5 ^0.04 ^-0.3 ~26.4 ~
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:tiga/anim_anger/spin/keyframes/6
execute if entity @s[scores={AsaMatrix=30..33}] run tp @s ^0.5 ^0.02 ^-0.2 ~26.4 ~
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:tiga/anim_anger/spin/keyframes/7
execute if entity @s[scores={AsaMatrix=34..38}] run tp @s ^0 ^0 ^0 ~21.6 ~
execute if entity @s[scores={AsaMatrix=39..45}] run tp @s ^0.1 ^0 ^0 ~6 ~
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:tiga/anim_anger/spin/keyframes/8
execute if entity @s[scores={AsaMatrix=46..47}] run tp @s ^0 ^0 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=48}] run function asa_animator:tiga/anim_anger/spin/keyframes/9
execute if entity @s[scores={AsaMatrix=48..58}] run tp @s ^0 ^0 ^0.04545455 ~1 ~
execute if entity @s[scores={AsaMatrix=59..}] run function asa_animator:tiga/anim/spin/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=16}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=25}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=25..45}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=25..38}] positioned ^ ^ ^5 run function asa_animator:tiga/anim/spin/events/damage
execute if entity @s[scores={AsaMatrix=25..38}] positioned ^ ^ ^-5 run function asa_animator:tiga/anim/spin/events/damage

execute if entity @s[scores={AsaMatrix=17}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=17}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=17}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7