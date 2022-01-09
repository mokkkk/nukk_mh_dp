# 4 Damage
 data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3.5] run function asa_animator:diablos/anim/attack/events/damage_sub
execute as @e[type=armor_stand,tag=DiablosParts,tag=Tail2] at @s as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/attack/events/damage_sub
