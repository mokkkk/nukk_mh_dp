# 4 Damage
 data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3.5] run function asa_animator:reus/anim/tail_spin/events/damage_sub
particle cloud ~ ~1.2 ~ 0.1 0.1 0.1 0.05 5