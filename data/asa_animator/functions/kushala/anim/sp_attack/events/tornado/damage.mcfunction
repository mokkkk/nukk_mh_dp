# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=0..8] run function asa_animator:kushala/anim/sp_attack/events/tornado/damage_sub
scoreboard players set @s AsaMatrix 20