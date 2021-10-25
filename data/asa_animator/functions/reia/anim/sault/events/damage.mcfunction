# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!ReiaParts,distance=0..4] run function asa_animator:reia/anim/sault/events/damage_sub
particle cloud ~ ~1.2 ~ 0.1 0.1 0.1 0.05 5