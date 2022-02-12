# 4 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=0..5] run function asa_animator:dyno/anim/breath/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~4 ~ 0 0 0 0 1 force
particle lava ~ ~ ~ 0 0 0 0 15 force
particle large_smoke ~ ~ ~ 0 0 0 0.2 20 force
kill @s