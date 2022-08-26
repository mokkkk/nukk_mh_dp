# 2 - 3 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3.5] run function asa_animator:magara/anim/bite/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2