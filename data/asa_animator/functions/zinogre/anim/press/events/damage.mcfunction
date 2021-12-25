# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..4] run function asa_animator:zinogre/anim/press/events/damage_sub
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6