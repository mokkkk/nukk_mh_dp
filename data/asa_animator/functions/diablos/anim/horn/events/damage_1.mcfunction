# 4 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=0..7] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..6] run function asa_animator:diablos/anim/horn/events/damage_sub_1
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion ~ ~0.5 ~ 2 0.5 2 0 20
playsound entity.wither.break_block master @a ~ ~ ~ 3 0.7