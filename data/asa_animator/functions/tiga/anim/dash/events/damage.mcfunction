# 5 Damage
data merge storage score_damage: {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..5] run function asa_animator:tiga/anim/dash/events/damage_sub
