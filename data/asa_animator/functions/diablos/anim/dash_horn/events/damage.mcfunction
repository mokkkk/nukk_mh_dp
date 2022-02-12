# 5 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/dash_horn/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle block sand ~ ~0.5 ~ 1 0.1 1 0 50
particle sweep_attack ~ ~2 ~ 1 3 1 0 50