# 6 - 7.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:15.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..6] run function asa_animator:reus/anim/bite_charge/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0.6 0.6 0.6 0.5 15
particle flame ~ ~ ~ 0.6 0.6 0.6 0.05 15