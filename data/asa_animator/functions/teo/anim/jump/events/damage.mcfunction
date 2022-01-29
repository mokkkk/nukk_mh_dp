# 7 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..5.5] run function asa_animator:teo/anim/jump/events/damage_sub