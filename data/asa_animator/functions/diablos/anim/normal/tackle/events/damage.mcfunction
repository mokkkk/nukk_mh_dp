# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..5] run function asa_animator:diablos/anim/normal/tackle/events/damage_sub
particle block sand ~ ~0.3 ~ 1 0 1 0 3