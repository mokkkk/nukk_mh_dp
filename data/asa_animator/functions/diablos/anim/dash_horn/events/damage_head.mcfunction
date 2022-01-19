# 5 Damage
 data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute positioned ^ ^ ^6 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..4] run function asa_animator:diablos/anim/short_dash/events/damage_sub