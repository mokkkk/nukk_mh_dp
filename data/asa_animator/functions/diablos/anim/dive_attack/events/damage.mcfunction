# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..6] run function asa_animator:diablos/anim/dive_attack/events/damage_sub
particle explosion_emitter ~ ~ ~ 0 0 0 0 1