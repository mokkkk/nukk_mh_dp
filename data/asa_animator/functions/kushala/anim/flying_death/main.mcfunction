# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_death/start
execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/anim/flying_death/keyframes/0
execute if entity @s[scores={AsaMatrix=1..5}] run tp @s ^0 ^0.08 ^0
execute if entity @s[scores={AsaMatrix=6}] run function asa_animator:kushala/anim/flying_death/keyframes/1
execute if entity @s[scores={AsaMatrix=6..10}] run tp @s ^0 ^0.2 ^0
execute if entity @s[scores={AsaMatrix=11}] run function asa_animator:kushala/anim/flying_death/keyframes/2
execute if entity @s[scores={AsaMatrix=11..16}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=17}] run function asa_animator:kushala/anim/flying_death/keyframes/3
execute if entity @s[scores={AsaMatrix=17..22}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=23}] run function asa_animator:kushala/anim/flying_death/keyframes/4
execute if entity @s[scores={AsaMatrix=23..40}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=41}] run function asa_animator:kushala/anim/flying_death/keyframes/5
execute if entity @s[scores={AsaMatrix=41..118}] run tp @s ^0 ^0 ^0
execute if entity @s[scores={AsaMatrix=119..}] run function asa_animator:kushala/anim/flying_death/end
execute as @e[type=armor_stand,tag=KushalaParts] run function #asa_matrix:animate
function asa_animator:kushala/model

execute if entity @s[scores={AsaMatrix=1}] run function asa_animator:kushala/manager/model/change_to_normal
execute if entity @s[scores={AsaMatrix=10}] at @s run function asa_animator:kushala/anim/flying_damage/events/pos/set_pos
execute if entity @s[scores={AsaMatrix=11..22}] run function asa_animator:kushala/anim/flying_damage/events/pos/offset
execute if entity @s[scores={AsaMatrix=10}] run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={AsaMatrix=22}] positioned ~ ~1.5 ~ run function asa_animator:kushala/manager/particle/step
execute if entity @s[scores={AsaMatrix=40}] run playsound block.grass.step master @a ~ ~ ~ 2 0.7

execute if entity @s[scores={AsaMatrix=40}] unless entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10418
execute if entity @s[scores={AsaMatrix=40}] if entity @s[tag=DestroyHead] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10420