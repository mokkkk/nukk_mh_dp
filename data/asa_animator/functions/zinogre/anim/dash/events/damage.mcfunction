# 4 - 5.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:3}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument.BypassArmor set value 1b
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..4.6] run function asa_animator:zinogre/anim/dash/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle block grass ~ ~0.5 ~ 2 0 2 0 20

execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 2 ^ ^2 ^ 2 2 2 0 10
execute if entity @s[tag=IsThunder] run particle end_rod ^ ^2 ^ 2 2 2 0.1 5
execute if entity @s[tag=IsThunder] run particle sneeze ^ ^1 ^ 2 0 2 0.3 20