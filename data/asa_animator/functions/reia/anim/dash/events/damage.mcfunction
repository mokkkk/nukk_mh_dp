# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!marker,tag=!ReiaParts,distance=0..3.5] run function asa_animator:reia/anim/dash/events/damage_sub