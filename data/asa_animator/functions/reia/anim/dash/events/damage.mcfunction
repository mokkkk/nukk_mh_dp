# 3 - 4.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReiaParts,distance=0..3.5] run function asa_animator:reia/anim/dash/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType