# 5 Damage
data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/dash_horn/events/damage_sub
particle block sand ~ ~0.5 ~ 1 0.1 1 0 50
particle sweep_attack ~ ~2 ~ 1 3 1 0 50