# 7 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:2}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument.BypassArmor set value 1b
execute positioned ^ ^ ^-1 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..5.5] run function asa_animator:zinogre/anim/tackle_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 5 ^ ^6 ^ 2 1 2 0 20