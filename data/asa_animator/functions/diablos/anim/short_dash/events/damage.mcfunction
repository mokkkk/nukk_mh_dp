# 4 - 4.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run tag @s add MhdpDHit
execute as @e[tag=MhdpDHit,distance=0..12] run function asa_animator:diablos/anim/short_dash/events/damage_sub
tag @e[tag=MhdpDHit,distance=0..12] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType