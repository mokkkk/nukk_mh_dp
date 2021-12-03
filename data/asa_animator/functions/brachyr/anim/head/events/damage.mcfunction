# 3.5 Damage
data merge storage score_damage: {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..3.5] run function asa_animator:brachyr/anim/head/events/damage_sub