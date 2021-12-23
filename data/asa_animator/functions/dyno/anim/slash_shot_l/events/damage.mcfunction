# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..5] run function asa_animator:dyno/anim/slash_shot_l/events/damage_sub
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..5] run function asa_animator:dyno/anim/slash_shot_l/events/damage_sub
particle flame ^ ^1 ^ 1 1 1 0.1 30
particle flame ^ ^1 ^3 1 1 1 0.1 30
particle flame ^ ^1 ^6 1 1 1 0.1 30
particle lava ^ ^1 ^3 1 1 1 0.1 10
particle item magma_block ^ ^1 ^6 1 0.1 1 0 10
kill @e[type=marker,tag=DynoMoveRotate]

execute if entity @s[tag=IsHeatTail] positioned ~ ~3 ~ run function asa_animator:dyno/anim/slash_shot_l/events/shot/shot
function asa_animator:dyno/manager/model/tail_heat_count