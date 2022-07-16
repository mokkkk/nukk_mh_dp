# 3 - 4.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3.5] run function asa_animator:zinogre/anim/shot/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 0.5
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 3 0.5

particle dust 1 1000000000 1000000000 5 ~ ~1.5 ~ 1 3 1 0 30
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.2 30
particle flash ~ ~ ~ 1 1 1 0 5

kill @s