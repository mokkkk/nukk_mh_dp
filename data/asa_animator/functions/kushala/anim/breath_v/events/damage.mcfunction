# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/breath_v/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..3] run function asa_animator:kushala/anim/breath_v/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion ~ ~ ~ 0.3 0.3 0.3 0 3 force
kill @s