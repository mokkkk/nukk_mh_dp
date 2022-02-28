# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/g_start_fly/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/g_start_fly/keyframes/0
execute if entity @s[scores={AsaMatrix=1..8}] run tp @s ^0 ^-0.01875 ^0.0125
execute if entity @s[scores={AsaMatrix=9}] run function asa_animator:ruko/anim/g_start_fly/keyframes/1
execute if entity @s[scores={AsaMatrix=9..17}] run tp @s ^0 ^0.01666667 ^-0.03333334
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:ruko/anim/g_start_fly/keyframes/2
execute if entity @s[scores={AsaMatrix=18..22}] run tp @s ^0 ^0.1 ^0.04
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:ruko/anim/g_start_fly/keyframes/3
execute if entity @s[scores={AsaMatrix=23..28}] run tp @s ^0 ^0.3333333 ^0
execute if entity @s[scores={AsaMatrix=29}] run function asa_animator:ruko/anim/g_start_fly/keyframes/4
execute if entity @s[scores={AsaMatrix=29..40}] run tp @s ^0 ^0.125 ^0
execute if entity @s[scores={AsaMatrix=41..}] run function asa_animator:ruko/anim/g_start_fly/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=28}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=17}] if entity @a[distance=..6] as @a[distance=..6] run function mh_dp:player/knockback/start_wind

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=1..17}] run function asa_animator:ruko/anim/g_start_fly/events/particle
execute if entity @s[scores={AsaMatrix=1..17}] as @a[distance=..16] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s facing entity @e[type=armor_stand,tag=RukoRoot] feet rotated ~ 0 positioned ^ ^ ^-0.4 rotated as @s run function asa_animator:ruko/anim/gravity/events/move