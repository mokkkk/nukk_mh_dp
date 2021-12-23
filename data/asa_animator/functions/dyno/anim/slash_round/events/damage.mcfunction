# 8 Damage
 data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=3..9] run function asa_animator:dyno/anim/slash_round/events/damage_sub
execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle
execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle_heat
function asa_animator:dyno/anim/slash_large_l/events/particle_round
function asa_animator:dyno/manager/model/tail_heat_count