# 4 Damage
 data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/tail_whip/events/damage_sub
particle block sand ~ ~0.1 ~ 1 0 1 0 3