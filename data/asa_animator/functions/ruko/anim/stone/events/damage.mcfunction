# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..4] run function asa_animator:ruko/anim/stone/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType