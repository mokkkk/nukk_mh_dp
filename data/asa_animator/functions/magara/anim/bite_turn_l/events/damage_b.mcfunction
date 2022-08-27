# 3.5 - 4.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3.5] run function asa_animator:magara/anim/bite_turn_l/events/damage_b_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute at @e[type=armor_stand,tag=MagaraParts,tag=HeadU] run particle dust 0.325 0.239 0.4 3 ~ ~ ~ 0.3 0.3 0.3 0 5