# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[distance=0..4.5,type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts] run function asa_animator:reus/anim/flying_attack/events/damage_sub