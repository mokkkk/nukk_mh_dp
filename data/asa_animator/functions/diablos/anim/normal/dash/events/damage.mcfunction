# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/normal/dash/events/damage_sub