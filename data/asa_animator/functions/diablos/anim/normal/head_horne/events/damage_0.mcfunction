# 1 Damage
 data modify storage score_damage: Argument set value {Damage:2.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/normal/head_horne/events/damage_sub_0
playsound item.trident.hit master @a ~ ~ ~ 3 0.5