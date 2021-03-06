# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/dash_jump/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0 ^-0.04
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/1
execute if entity @s[scores={AsaMatrix=6..12}] run tp @s ^0 ^0 ^-0.01428572
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/2
execute if entity @s[scores={AsaMatrix=13..16}] run tp @s ^0 ^1.25 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/3
execute if entity @s[scores={AsaMatrix=17..20}] run tp @s ^0 ^0.75 ^0
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/4
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^-0.825 ^0
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/5
execute if entity @s[scores={AsaMatrix=25..29}] run tp @s ^0 ^-1.06 ^0
execute if entity @s[scores={AsaMatrix=30}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/6
execute if entity @s[scores={AsaMatrix=30..33}] run tp @s ^0 ^0.175 ^0.075
execute if entity @s[scores={AsaMatrix=34}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/7
execute if entity @s[scores={AsaMatrix=34..35}] run tp @s ^0 ^-0.05 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/8
execute if entity @s[scores={AsaMatrix=36..38}] run tp @s ^0 ^-0.03333334 ^0
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/9
execute if entity @s[scores={AsaMatrix=39..40}] run tp @s ^0 ^0.1 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:tiga/anim_anger/dash_jump/keyframes/10
execute if entity @s[scores={AsaMatrix=41..43}] run tp @s ^0 ^-0.03333334 ^0
execute if entity @s[scores={AsaMatrix=44..}] run function asa_animator:tiga/anim/dash_jump/end
execute as @e[type=armor_stand,tag=TigaParts] run function #asa_matrix:animate
function asa_animator:tiga/model

execute if entity @s[scores={AsaMatrix=1}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=1..8}] run function asa_animator:tiga/manager/rotate
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:tiga/anim_anger/jump/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=12}] run particle block grass_block ~ ~0.1 ~ 1 0.1 1 0 30
execute if entity @s[scores={AsaMatrix=12..28}] run function asa_animator:tiga/anim/jump/events/pos/offset
execute if entity @s[scores={AsaMatrix=29}] run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=29}] run particle block grass_block ~ ~0.1 ~ 1 0.1 1 0 30
execute if entity @s[scores={AsaMatrix=29..33}] run playsound block.grass.step master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={AsaMatrix=15..33}] run function asa_animator:tiga/anim/jump/events/damage

execute if entity @s[scores={AsaMatrix=12}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=12}] run playsound entity.hoglin.attack master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=29..}] at @s run tp @s ^ ^ ^0.8