# 5 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3.8] run function asa_animator:diablos/anim_anger/dash/events/damage_sub