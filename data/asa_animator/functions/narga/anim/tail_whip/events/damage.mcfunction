# 2.5 - 4 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:5.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=..3.5] run function asa_animator:narga/anim/tail_whip/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle cloud ~ ~ ~ 0 0 0 0.05 3