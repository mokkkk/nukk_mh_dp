# 5 Damage
 data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!TigaParts,distance=..4] run function asa_animator:tiga/anim/jump/events/damage_sub
