# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/stone/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:ruko/anim/stone/keyframes/0
execute if entity @s[scores={AsaMatrix=1..10}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:ruko/anim/stone/keyframes/1
execute if entity @s[scores={AsaMatrix=11..25}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:ruko/anim/stone/keyframes/2
execute if entity @s[scores={AsaMatrix=26..35}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=36}] run function asa_animator:ruko/anim/stone/keyframes/3
execute if entity @s[scores={AsaMatrix=36..45}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=46}] run function asa_animator:ruko/anim/stone/keyframes/4
execute if entity @s[scores={AsaMatrix=46..60}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=61}] run function asa_animator:ruko/anim/stone/keyframes/5
execute if entity @s[scores={AsaMatrix=61..75}] run tp @s ^0 ^-0.01333333 ^0
execute if entity @s[scores={AsaMatrix=76}] run function asa_animator:ruko/anim/stone/keyframes/6
execute if entity @s[scores={AsaMatrix=76..80}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=81}] run function asa_animator:ruko/anim/stone/keyframes/7
execute if entity @s[scores={AsaMatrix=81..92}] run tp @s ^0 ^0.01666667 ^0
execute if entity @s[scores={AsaMatrix=93..}] run function asa_animator:ruko/anim/stone/end
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate
function asa_animator:ruko/model

execute if entity @s[scores={AsaMatrix=1}] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 3 1
execute if entity @s[scores={AsaMatrix=1..25}] run function asa_animator:ruko/manager/particle/push
execute if entity @s[scores={AsaMatrix=1..25}] as @a[distance=..16] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] at @s facing entity @e[type=armor_stand,tag=RukoRoot] feet rotated ~ 0 positioned ^ ^ ^-0.3 rotated as @s run function asa_animator:ruko/anim/gravity/events/move

execute if entity @s[scores={AsaMatrix=35..50}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 1.5
execute if entity @s[scores={AsaMatrix=35..50}] run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 3 0.5
execute if entity @s[scores={AsaMatrix=35..50}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 2
execute if entity @s[scores={AsaMatrix=35..50}] run playsound entity.skeleton_horse.death master @a ~ ~ ~ 3 1.6
execute if entity @s[scores={AsaMatrix=31..35}] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 0.5

execute if entity @s[scores={AsaMatrix=26}] run function asa_animator:ruko/manager/particle/step
execute if entity @s[scores={AsaMatrix=75}] run function asa_animator:ruko/manager/particle/step

execute if entity @s[scores={AsaMatrix=3}] rotated ~ 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] rotated ~90 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] rotated ~180 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] rotated ~270 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] if score #mhdp_ruko_lv AsaMatrix matches 2.. rotated ~45 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] if score #mhdp_ruko_lv AsaMatrix matches 2.. rotated ~135 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] if score #mhdp_ruko_lv AsaMatrix matches 2.. rotated ~225 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=3}] if score #mhdp_ruko_lv AsaMatrix matches 2.. rotated ~315 0 positioned ^ ^-5 ^5 run function asa_animator:ruko/anim/stone/events/summon
execute if entity @s[scores={AsaMatrix=11}] run playsound block.grass.break master @a ~ ~ ~ 3 0.7
execute if entity @s[scores={AsaMatrix=6..15}] as @e[type=armor_stand,tag=RukoStone,tag=Summoned] at @s run function asa_animator:ruko/anim/stone/events/move
execute if entity @s[scores={AsaMatrix=6..15}] as @e[type=armor_stand,tag=RukoStone,tag=Summoned] at @s run particle block grass_block ~ ~ ~ 0.3 0.3 0.3 0 3
execute if entity @s[scores={AsaMatrix=35}] run function asa_animator:ruko/anim/stone/events/shot

# コンボキャンセル
    execute unless predicate asa_animator:ruko/combo if entity @s[scores={AsaMatrix=75}] run function asa_animator:ruko/manager/cancel_animation