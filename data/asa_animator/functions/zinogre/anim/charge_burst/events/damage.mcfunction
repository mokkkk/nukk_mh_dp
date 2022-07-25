# 0.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:1.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:1.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..10] run function asa_animator:zinogre/anim/charge_burst/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType