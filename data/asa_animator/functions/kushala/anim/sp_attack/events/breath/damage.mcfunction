# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/sp_attack/events/breath/damage_sub
particle explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
kill @s