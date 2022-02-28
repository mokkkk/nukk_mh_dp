# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/claw_r/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/claw_r/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^-0.02 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:ruko/anim/claw_r/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.06 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:ruko/anim/claw_r/keyframes/2
execute if entity @s[scores={AsaMatrix=11..17}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=18}] run function asa_animator:ruko/anim/claw_r/keyframes/3
execute if entity @s[scores={AsaMatrix=18..20}] run tp @s ^0 ^-0.03333334 ^0.03333334 ~1 ~
execute if entity @s[scores={AsaMatrix=21}] run function asa_animator:ruko/anim/claw_r/keyframes/4
execute if entity @s[scores={AsaMatrix=21..24}] run tp @s ^0 ^-0.025 ^0.025 ~1 ~
execute if entity @s[scores={AsaMatrix=25}] run function asa_animator:ruko/anim/claw_r/keyframes/5
execute if entity @s[scores={AsaMatrix=25..32}] run tp @s ^0 ^-0.0125 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=33}] run function asa_animator:ruko/anim/claw_r/keyframes/6
execute if entity @s[scores={AsaMatrix=33..45}] run tp @s ^0 ^0.007692308 ^-0.01538462 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=46..}] run function asa_animator:ruko/anim/claw_r/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=18}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=33}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=6..10}] run function asa_animator:ruko/manager/rotate
execute if entity @s[scores={AsaMatrix=1..10}] if entity @s[tag=RukoAttackTarget,distance=..7] at @s run tp @s ^ ^ ^-0.6

execute if entity @s[scores={AsaMatrix=18..24}] unless entity @s[tag=RukoAttackTarget,distance=..7] at @s run tp @s ^ ^ ^0.7

execute if entity @s[scores={AsaMatrix=32}] run function asa_animator:ruko/anim/claw_r/events/change

execute if entity @s[scores={AsaMatrix=21}] run playsound item.trident.throw master @a ~ ~ ~ 2 1.2
execute if entity @s[scores={AsaMatrix=22}] positioned ^ ^1 ^4.5 run function asa_animator:ruko/anim/claw_l/events/damage
execute if entity @s[scores={AsaMatrix=23}] positioned ^-1 ^1 ^4.5 run function asa_animator:ruko/anim/claw_l/events/damage
execute if entity @s[scores={AsaMatrix=24}] positioned ^-2 ^1 ^4.5 run function asa_animator:ruko/anim/claw_l/events/damage

execute if entity @s[scores={AsaMatrix=1}] if score #mhdp_ruko_lv AsaMatrix matches 1.. run playsound entity.evoker.cast_spell master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=1..15}] if score #mhdp_ruko_lv AsaMatrix matches 1.. run function asa_animator:ruko/anim/gravity/events/particle
execute if entity @s[scores={AsaMatrix=1..15}] if score #mhdp_ruko_lv AsaMatrix matches 1.. as @a[distance=3..16] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s facing entity @e[type=armor_stand,tag=RukoRoot] feet rotated ~ 0 positioned ^ ^ ^0.2 rotated as @s run function asa_animator:ruko/anim/g_flying_press/events/move