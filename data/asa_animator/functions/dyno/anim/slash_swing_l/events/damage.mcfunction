# 4 - 5.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute if entity @s[tag=IsHeatTail] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument.Damage set value 10.0f
execute if entity @s[tag=IsHeatTail] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument.Damage set value 13.0f
execute if entity @s[tag=IsHeatTail] run data modify storage mhdp: DamageType.Epf set value 2
execute positioned ^ ^ ^-2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..4] run tag @s add MhdpDHit
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..4] run tag @s add MhdpDHit
execute as @a[tag=MhdpDHit,distance=0..15] run function mh_dp:player/knockback/start_wind
execute as @e[tag=MhdpDHit,distance=0..15] run function asa_animator:dyno/anim/slash_swing_l/events/damage_sub
tag @e[tag=MhdpDHit,distance=0..15] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute positioned ^ ^ ^-2 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^2 run particle block grass_block ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^-2 run particle explosion ~ ~ ~ 1 0.1 1 0 10
execute positioned ^ ^ ^2 run particle explosion ~ ~ ~ 1 0.1 1 0 10
function asa_animator:dyno/manager/model/tail_heat_count