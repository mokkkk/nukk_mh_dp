# 5 - 6.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:13.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @a[distance=..3.5] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TigaParts,distance=..3.5] run function asa_animator:tiga/anim/spin/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle block grass_block ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 1