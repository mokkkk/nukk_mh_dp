# 4 Damage
data merge storage score_damage: {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/normal/head/events/damage_sub
particle cloud ~ ~1.2 ~ 0.1 0.1 0.1 0.05 5