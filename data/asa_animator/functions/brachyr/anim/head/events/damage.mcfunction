# 3.5 Damage
data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=..3.5] run function asa_animator:brachyr/anim/head/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType