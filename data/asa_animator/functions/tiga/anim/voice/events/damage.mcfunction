# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..5] run function asa_animator:tiga/anim/voice/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..8] run function asa_animator:tiga/anim/voice/events/damage_sub_