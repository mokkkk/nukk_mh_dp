# 3.5 Damage
 data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=0..7] run function asa_animator:narga/anim/blade_l/events/damage_sub