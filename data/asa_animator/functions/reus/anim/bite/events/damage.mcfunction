# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[distance=0..3.5,type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts] run function asa_animator:reus/anim/bite/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 1.2