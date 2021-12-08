# 3 Damage
data merge storage score_damage: {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!marker,tag=!DynoParts,distance=0..5] run function asa_animator:dyno/anim/slash_shot_l/events/shot/damage_sub