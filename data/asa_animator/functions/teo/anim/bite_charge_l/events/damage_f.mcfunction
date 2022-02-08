# 7 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..3.5] run function asa_animator:teo/anim/bite_charge_l/events/damage_f_sub
playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
particle lava ~ ~ ~ 0.5 0.5 0.5 0.05 3
particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 30
particle flame ^ ^ ^1 0.5 0.5 0.5 0.1 10