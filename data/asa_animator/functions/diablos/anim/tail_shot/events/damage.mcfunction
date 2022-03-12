# 4.5 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_shot/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.8
particle explosion ~ ~ ~ 2 0 2 0 15
particle block sand ~ ~ ~ 1 0.5 1 1 50

execute positioned ~ ~1 ~ rotated ~-40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~ -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start
execute positioned ~ ~1 ~ rotated ~40 -40 run function asa_animator:diablos/anim/tail_shot/events/shot/start