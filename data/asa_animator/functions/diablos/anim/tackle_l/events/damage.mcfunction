# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^2 as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..4] run function asa_animator:diablos/anim/tackle_l/events/damage_sub
execute positioned ^ ^ ^-3 as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..4] run function asa_animator:diablos/anim/tackle_l/events/damage_sub