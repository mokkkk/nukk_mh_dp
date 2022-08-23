# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReusParts,distance=0..3.5] run function asa_animator:reus/anim/flying_breath_large/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle explosion ~ ~ ~ 0.8 0.8 0.8 0 7 force
particle lava ~ ~ ~ 0 0 0 0 2 force
kill @s