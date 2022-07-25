# 4 - 5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] positioned as @e[type=armor_stand,tag=ZinogreRoot] run function asa_animator:zinogre/anim/spin_claw/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType