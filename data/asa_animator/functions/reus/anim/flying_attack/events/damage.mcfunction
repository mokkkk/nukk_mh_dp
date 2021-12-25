# 2 Damage
 data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[distance=0..3.2,type=!armor_stand,type=!marker,tag=!ReusParts] run function asa_animator:reus/anim/flying_attack/events/damage_sub