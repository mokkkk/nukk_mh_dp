# 3.5 Damage
 data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=0..5.5] run function asa_animator:narga/anim/blade_l_anger/events/damage_sub