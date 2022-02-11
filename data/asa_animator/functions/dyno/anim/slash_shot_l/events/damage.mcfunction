# 4 - 5.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:1b}
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..5] run function asa_animator:dyno/anim/slash_shot_l/events/damage_sub
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..5] run function asa_animator:dyno/anim/slash_shot_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle flame ^ ^1 ^ 1 1 1 0.1 30
particle flame ^ ^1 ^3 1 1 1 0.1 30
particle flame ^ ^1 ^6 1 1 1 0.1 30
particle lava ^ ^1 ^3 1 1 1 0.1 10
particle item magma_block ^ ^1 ^6 1 0.1 1 0 10
kill @e[type=marker,tag=DynoMoveRotate]

execute if entity @s[tag=IsHeatTail] positioned ~ ~3 ~ run function asa_animator:dyno/anim/slash_shot_l/events/shot/shot
function asa_animator:dyno/manager/model/tail_heat_count