# 2.5 - 4 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:5.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReiaParts,distance=0..3.5] run function asa_animator:reia/anim/tail_spin_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle cloud ~ ~1.2 ~ 0.1 0.1 0.1 0.05 5