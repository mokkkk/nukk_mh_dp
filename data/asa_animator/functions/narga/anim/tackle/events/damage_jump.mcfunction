# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=0..4] run function asa_animator:narga/anim/tackle/events/damage_sub_jump