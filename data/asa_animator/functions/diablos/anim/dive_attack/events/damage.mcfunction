# 6 - 6.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:13.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..6] run function asa_animator:diablos/anim/dive_attack/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion_emitter ~ ~ ~ 0 0 0 0 1