# 2 Damage
data merge storage score_damage: {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..3] run function asa_animator:brachy/anim/head/events/damage_sub