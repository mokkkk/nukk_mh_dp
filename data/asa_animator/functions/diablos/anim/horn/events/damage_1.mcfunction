# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..6] run function asa_animator:diablos/anim/horn/events/damage_sub_1
particle explosion ~ ~0.5 ~ 2 0.5 2 0 20
playsound entity.wither.break_block master @a ~ ~ ~ 3 0.7