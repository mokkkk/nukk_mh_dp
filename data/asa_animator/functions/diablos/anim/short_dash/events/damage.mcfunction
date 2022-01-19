# 5 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run function asa_animator:diablos/anim/short_dash/events/damage_sub
execute positioned ^ ^ ^4 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/short_dash/events/damage_sub