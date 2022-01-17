# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!KushalaParts,distance=0..4] run function asa_animator:kushala/anim/bjb_land/events/damage_sub
kill @s