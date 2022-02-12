# 3 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^ ^3 as @a[distance=..7] run function mh_dp:player/knockback/start_wind
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TigaParts,distance=..7] run function asa_animator:tiga/anim/voice/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TigaParts,distance=7..12] unless entity @s[scores={MhdpTAvoid=1..}] run function asa_animator:tiga/anim/voice/events/damage_sub_
data remove storage score_damage: Argument
data remove storage mhdp: DamageType