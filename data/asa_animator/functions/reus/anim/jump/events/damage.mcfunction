# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..6.5] run function asa_animator:reus/anim/jump/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~ ~ 0.5 0 0.5 0 20
particle explosion ~ ~0.5 ~ 2 0.5 2 0 30
tag @s remove IsFlying