# 6 ~ 2.5 - 8 ~ 4 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyParts,distance=..5] run function asa_animator:brachy/manager/bomb/damage_sub
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:5.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyParts,distance=5..8] run function asa_animator:brachy/manager/bomb/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
execute positioned ^1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute positioned ^-1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute positioned ^1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute positioned ^1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20
execute positioned ^-1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute positioned ^-1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20