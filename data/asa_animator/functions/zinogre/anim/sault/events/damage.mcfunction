# 4-5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument.BypassArmor set value 1b
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..5.5] positioned as @e[type=armor_stand,tag=ZinogreRoot] run function asa_animator:zinogre/anim/sault/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute rotated ~ ~ run function asa_animator:zinogre/anim/sault/events/particle
execute rotated ~4 ~ run function asa_animator:zinogre/anim/sault/events/particle
execute rotated ~8 ~ run function asa_animator:zinogre/anim/sault/events/particle