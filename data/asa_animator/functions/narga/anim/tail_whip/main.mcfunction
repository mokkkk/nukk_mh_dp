# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_whip/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/anim/tail_whip/keyframes/0
execute if entity @s[scores={AsaMatrix=1..6}] run tp @s ^-0.1666667 ^0.1333333 ^-0.1333333
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:narga/anim/tail_whip/keyframes/1
execute if entity @s[scores={AsaMatrix=7..12}] run tp @s ^0.1666667 ^-0.1333333 ^-0.1166667
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:narga/anim/tail_whip/keyframes/2
execute if entity @s[scores={AsaMatrix=13..18}] run tp @s ^0.01666667 ^0 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:narga/anim/tail_whip/keyframes/3
execute if entity @s[scores={AsaMatrix=19..24}] run tp @s ^0.15 ^0.1333333 ^0.1166667 ~-3 ~
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:narga/anim/tail_whip/keyframes/4
execute if entity @s[scores={AsaMatrix=25..30}] run tp @s ^-0.1833333 ^-0.1333333 ^0.3833333 ~-1 ~
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:narga/anim/tail_whip/keyframes/5
execute if entity @s[scores={AsaMatrix=31..36}] run tp @s ^0.03333334 ^0 ^0.04999999 ~4 ~
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:narga/anim/tail_whip/keyframes/6
execute if entity @s[scores={AsaMatrix=37..44}] run tp @s ^0.1125 ^0.1 ^-0.175 ~0.1 ~
execute if entity @s[scores={AsaMatrix=45}] run function asa_animator:narga/anim/tail_whip/keyframes/7
execute if entity @s[scores={AsaMatrix=45..50}] run tp @s ^-0.08333334 ^-0.1333333 ^-0.15 ~-0.1 ~
execute if entity @s[scores={AsaMatrix=51}] run function asa_animator:narga/anim/tail_whip/keyframes/8
execute if entity @s[scores={AsaMatrix=51..60}] run tp @s ^-0.05 ^0 ^0.05
execute if entity @s[scores={AsaMatrix=61..}] run function asa_animator:narga/anim/tail_whip/end
execute as @e[type=armor_stand,tag=NargaParts] run function #asa_matrix:animate
function asa_animator:narga/model

execute if entity @s[scores={AsaMatrix=1..18}] run function asa_animator:narga/manager/rotate

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:narga/manager/particle/jump
execute if entity @s[scores={AsaMatrix=37}] run function asa_animator:narga/manager/particle/jump

execute if entity @s[scores={AsaMatrix=13..18}] run function asa_animator:narga/manager/ground
execute if entity @s[scores={AsaMatrix=51..60}] run function asa_animator:narga/manager/ground

execute if entity @s[scores={AsaMatrix=19..24}] unless entity @e[tag=NargaAttackTarget,distance=0..5] at @s run tp @s ^ ^ ^0.4

execute if entity @s[scores={AsaMatrix=20}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=26}] run playsound item.trident.throw master @a ~ ~ ~ 3 1.2
execute if entity @s[scores={AsaMatrix=20..30}] as @e[type=armor_stand,tag=Tail2,distance=0..15] at @s run function asa_animator:narga/anim/tail_whip/events/damage