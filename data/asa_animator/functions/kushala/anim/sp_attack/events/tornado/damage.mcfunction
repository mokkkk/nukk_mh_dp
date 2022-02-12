# 6 Damage
data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..8] run function asa_animator:kushala/anim/sp_attack/events/tornado/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
scoreboard players set @s AsaMatrix 20