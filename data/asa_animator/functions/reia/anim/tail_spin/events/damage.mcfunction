# 2.5 Damage
data merge storage score_damage: {Damage:5.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ReiaParts,distance=0..3.5] run function asa_animator:reia/anim/tail_spin/events/damage_sub
particle cloud ~ ~1.2 ~ 0.1 0.1 0.1 0.05 5