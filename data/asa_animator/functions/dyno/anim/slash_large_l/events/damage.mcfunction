# 3.5 Damage
data merge storage score_damage: {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=..5.5] run function asa_animator:dyno/anim/slash_large_l/events/damage_sub