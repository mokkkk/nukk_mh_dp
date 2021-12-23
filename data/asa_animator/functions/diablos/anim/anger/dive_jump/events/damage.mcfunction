# 6 Damage
 data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..5] run function asa_animator:diablos/anim/normal/dash/events/damage_sub