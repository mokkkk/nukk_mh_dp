# 4.5 Damage
data merge storage score_damage: {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=2..10] run function asa_animator:narga/anim/tail_spin/events/damage_sub