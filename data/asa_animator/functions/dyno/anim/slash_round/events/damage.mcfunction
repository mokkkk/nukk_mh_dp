# 8 Damage
data merge storage score_damage: {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=3..8] run function asa_animator:dyno/anim/slash_round/events/damage_sub
execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle
execute positioned ^ ^2 ^ run function asa_animator:dyno/anim/slash_large_l/events/particle_heat
function asa_animator:dyno/anim/slash_large_l/events/particle_round