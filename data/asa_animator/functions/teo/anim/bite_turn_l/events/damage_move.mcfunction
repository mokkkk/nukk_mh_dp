# 7 Damage
data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..4.5] run function asa_animator:teo/anim/bite_turn_l/events/damage_move_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType