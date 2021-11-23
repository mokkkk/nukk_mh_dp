# 2.5 Damage
data merge storage score_damage: {Damage:5.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..4] run function asa_animator:dyno/anim/slash_thrust_l/events/damage_sub
