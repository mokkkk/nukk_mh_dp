# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReiaParts,distance=0..3.5] run function asa_animator:reia/anim/dash/events/damage_sub