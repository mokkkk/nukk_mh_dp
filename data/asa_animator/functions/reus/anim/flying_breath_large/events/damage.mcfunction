# 6 - 8 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3] run function asa_animator:reus/anim/flying_breath_large/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
particle lava ~ ~ ~ 0 0 0 0 2 force
kill @s