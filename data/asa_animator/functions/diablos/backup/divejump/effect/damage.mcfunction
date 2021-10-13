# 7 Damage
data merge storage score_damage: {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!DiablosParts,distance=0..7] run function asa_animator:diablos/divejump/effect/damage_sub