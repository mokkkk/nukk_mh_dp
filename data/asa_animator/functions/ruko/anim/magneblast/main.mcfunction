# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/magneblast/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/magneblast/keyframes/0
execute if entity @s[scores={AsaMatrix=1..7}] run tp @s ^0 ^0 ^-0.02857143
execute if entity @s[scores={AsaMatrix=8}] run function asa_animator:ruko/anim/magneblast/keyframes/1
execute if entity @s[scores={AsaMatrix=8..12}] run tp @s ^0 ^0.1 ^0.04
execute if entity @s[scores={AsaMatrix=13}] run function asa_animator:ruko/anim/magneblast/keyframes/2
execute if entity @s[scores={AsaMatrix=13..18}] run tp @s ^0 ^0.3333333 ^0
execute if entity @s[scores={AsaMatrix=19}] run function asa_animator:ruko/anim/magneblast/keyframes/3
execute if entity @s[scores={AsaMatrix=19..30}] run tp @s ^0 ^0.125 ^0
execute if entity @s[scores={AsaMatrix=31}] run function asa_animator:ruko/anim/magneblast/keyframes/4
execute if entity @s[scores={AsaMatrix=31..38}] run tp @s ^0 ^0.05000001 ^-0.025
execute if entity @s[scores={AsaMatrix=39}] run function asa_animator:ruko/anim/magneblast/keyframes/5
execute if entity @s[scores={AsaMatrix=39..48}] run tp @s ^0 ^0.13 ^0.8 ~10 ~
execute if entity @s[scores={AsaMatrix=49}] run function asa_animator:ruko/anim/magneblast/keyframes/6
execute if entity @s[scores={AsaMatrix=49..68}] run tp @s ^0 ^-0.075 ^1.4 ~8 ~
execute if entity @s[scores={AsaMatrix=69}] run function asa_animator:ruko/anim/magneblast/keyframes/7
execute if entity @s[scores={AsaMatrix=69..93}] run tp @s ^0 ^0.02 ^1.8 ~8 ~
execute if entity @s[scores={AsaMatrix=94}] run function asa_animator:ruko/anim/magneblast/keyframes/8
execute if entity @s[scores={AsaMatrix=94..103}] run tp @s ^0 ^0.08000002 ^0.6 ~5 ~
execute if entity @s[scores={AsaMatrix=104}] run function asa_animator:ruko/anim/magneblast/keyframes/9
execute if entity @s[scores={AsaMatrix=104..110}] run tp @s ^0 ^ ^ ~10 ~
execute if entity @s[scores={AsaMatrix=111}] run function asa_animator:ruko/anim/magneblast/keyframes/10
execute if entity @s[scores={AsaMatrix=111..118}] run tp @s ^0 ^0.1875 ^0 ~1 ~
execute if entity @s[scores={AsaMatrix=119}] run function asa_animator:ruko/anim/magneblast/keyframes/11
execute if entity @s[scores={AsaMatrix=119..123}] run tp @s ^0 ^ ^-0.04
execute if entity @s[scores={AsaMatrix=124}] run function asa_animator:ruko/anim/magneblast/keyframes/12
execute if entity @s[scores={AsaMatrix=124..140}] run tp @s ^0 ^-0.01323529 ^0.03529412
execute if entity @s[scores={AsaMatrix=141}] run function asa_animator:ruko/anim/magneblast/keyframes/13
execute if entity @s[scores={AsaMatrix=141..150}] run tp @s ^0 ^0.01 ^-0.04
execute if entity @s[scores={AsaMatrix=151}] run function asa_animator:ruko/anim/magneblast/keyframes/14
execute if entity @s[scores={AsaMatrix=151..160}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=161}] run function asa_animator:ruko/anim/magneblast/keyframes/15
execute if entity @s[scores={AsaMatrix=161..175}] run tp @s ^0 ^0 ^-0.01333333 ~-0.5 ~
execute if entity @s[scores={AsaMatrix=176..}] run function asa_animator:ruko/anim/magneblast/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=7}] run summon marker ~ ~ ~ {Tags:["RukoMagnePos"]}
execute if entity @s[scores={AsaMatrix=7}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=18}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=38}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=68}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=103}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 3 0.7

execute if entity @s[scores={AsaMatrix=8}] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=8..123}] at @e[type=marker,tag=RukoMagnePos] run particle dust 0.314 0 0 2 ~ ~2 ~ 3 2 3 0 5
execute if entity @s[scores={AsaMatrix=8..123}] at @e[type=marker,tag=RukoMagnePos] run function asa_animator:ruko/manager/particle/pull
execute if entity @s[scores={AsaMatrix=8..80}] at @e[type=marker,tag=RukoMagnePos] as @a[distance=3..30] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s facing entity @e[type=marker,tag=RukoMagnePos] feet rotated ~ 0 positioned ^ ^ ^0.2 rotated as @s run function asa_animator:ruko/anim/g_flying_press/events/move
execute if entity @s[scores={AsaMatrix=81..123}] at @e[type=marker,tag=RukoMagnePos] as @a[distance=3..30] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s facing entity @e[type=marker,tag=RukoMagnePos] feet rotated ~ 0 positioned ^ ^ ^0.4 rotated as @s run function asa_animator:ruko/anim/g_flying_press/events/move
execute if entity @s[scores={AsaMatrix=123}] run kill @e[type=marker,tag=RukoMagnePos]

execute if entity @s[scores={AsaMatrix=38..45}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=38..45}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=38..45}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=38..45}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6

execute if entity @s[scores={AsaMatrix=102}] run function asa_animator:ruko/anim/magneblast/events/pos/set_pos_0
execute if entity @s[scores={AsaMatrix=103..110}] run function asa_animator:ruko/anim/magneblast/events/pos/offset
execute if entity @s[scores={AsaMatrix=118}] run function asa_animator:ruko/anim/magneblast/events/pos/set_pos_1
execute if entity @s[scores={AsaMatrix=119..123}] run function asa_animator:ruko/anim/magneblast/events/pos/offset

execute if entity @s[scores={AsaMatrix=124}] run function asa_animator:ruko/anim/magneblast/events/damage

execute if entity @s[scores={AsaMatrix=151..155}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=151..155}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.8
execute if entity @s[scores={AsaMatrix=151..155}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5

execute if entity @s[scores={AsaMatrix=7}] run tag @s add IsFlying
execute if entity @s[scores={AsaMatrix=123}] run tag @s remove IsFlying