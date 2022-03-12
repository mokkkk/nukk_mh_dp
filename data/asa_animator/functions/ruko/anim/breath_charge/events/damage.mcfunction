# 8 Damage
data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..6] run function asa_animator:ruko/anim/breath/events/damage_sub
execute positioned ^ ^ ^3 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..6] run function asa_animator:ruko/anim/breath/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
particle explosion ~ ~ ~ 0.5 0.5 0.5 1 5
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7

kill @s