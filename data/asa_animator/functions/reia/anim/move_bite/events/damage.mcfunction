# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[distance=0..3.5,type=!armor_stand,type=!marker,tag=!ReiaParts] run function asa_animator:reia/anim/move_bite/events/damage_sub