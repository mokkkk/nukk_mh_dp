# 3.5 - 5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute if entity @s[tag=IsHeatTail] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument.Damage set value 8.0f
execute if entity @s[tag=IsHeatTail] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument.Damage set value 11.0f
execute if entity @s[tag=IsHeatTail] run data modify storage mhdp: DamageType.Epf set value 2
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..5.5] run function asa_animator:dyno/anim/slash_large_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType