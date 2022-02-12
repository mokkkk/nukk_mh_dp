# 8 - 9 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:18.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:0b}
execute as @a[distance=3..9] run function mh_dp:player/knockback/start_wind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DynoParts,distance=3..9] run function asa_animator:dyno/anim/slash_round/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle
execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle_heat
function asa_animator:dyno/anim/slash_large_l/events/particle_round
function asa_animator:dyno/manager/model/tail_heat_count