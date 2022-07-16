# 7 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..4.5] run function asa_animator:zinogre/anim/chargehand_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion ~ ~0.5 ~ 2 0 2 0 10
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.5

particle dust 1 1000000000 1000000000 5 ^ ^5 ^ 0.5 2 0.5 0 100
particle flash ^ ^1 ^-4.2 2 2 2 0 30
particle sneeze ^ ^1 ^-4.2 1 1 1 1 150