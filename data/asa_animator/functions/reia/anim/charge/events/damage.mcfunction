# 4.5 - 7.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:15.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReiaParts,distance=0..4] run function asa_animator:reia/anim/charge/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0 0 0 0 15
particle large_smoke ~ ~ ~ 0 0 0 0.2 20