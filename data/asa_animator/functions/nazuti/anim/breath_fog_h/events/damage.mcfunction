# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NazutiParts,distance=0..4] run function asa_animator:nazuti/anim/breath_fog_h/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle dust 0.569 0.933 1 3 ~ ~1 ~ 1 1 1 0.05 10