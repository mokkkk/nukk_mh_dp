# 3.5 Damage
data merge storage score_damage: {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=3..10] run function asa_animator:narga/anim/tackle/events/damage_sub