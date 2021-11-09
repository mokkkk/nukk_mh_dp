# 4 Damage
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!NargaParts,distance=0..6] run function asa_animator:narga/anim/bite_2/events/damage_sub_tail