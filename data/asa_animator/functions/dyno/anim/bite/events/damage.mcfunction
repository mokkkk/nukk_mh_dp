# 2 - 3 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute if entity @s[tag=IsHeatHead] if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument.Damage set value 5.0f
execute if entity @s[tag=IsHeatHead] if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument.Damage set value 7.0f
execute if entity @s[tag=IsHeatHead] run data modify storage mhdp: DamageType.Epf set value 2
execute if entity @s[tag=IsHeatHead] run particle flame ~ ~3 ~ 0.5 0.5 0.5 0.1 30
execute if entity @s[tag=IsHeatHead] run particle lava ~ ~3 ~ 0.5 0.5 0.5 0.1 10
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=..3] run function asa_animator:dyno/anim/bite/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2