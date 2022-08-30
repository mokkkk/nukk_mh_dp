# 4 - 5.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute positioned ^ ^-3 ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!MagaraParts,distance=..4.6] run function asa_animator:magara/anim/flying_dash/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
