# 4 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute positioned ^ ^ ^-3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run tag @s add MhdpDHit
execute as @a[tag=MhdpDHit,distance=..15] run function mh_dp:player/knockback/start_wind
execute as @e[tag=MhdpDHit,distance=..15] run function asa_animator:diablos/anim/tackle_l/events/damage_sub
tag @e[tag=MhdpDHit,distance=..15] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType