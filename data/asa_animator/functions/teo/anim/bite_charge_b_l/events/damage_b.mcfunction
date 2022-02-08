# 7 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4.5] run function asa_animator:teo/anim/bite_charge_b_l/events/damage_b_sub
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle lava ~ ~ ~ 0.5 0.5 0.5 0.05 3
particle explosion ~ ~ ~ 1 1 1 0 10