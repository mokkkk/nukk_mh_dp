# 4.5 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=..4] run function asa_animator:narga/anim/bite_2/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.4