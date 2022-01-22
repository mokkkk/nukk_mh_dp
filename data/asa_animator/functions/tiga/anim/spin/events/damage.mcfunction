# 5 Damage
 data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TigaParts,distance=..3.5] run function asa_animator:tiga/anim/spin/events/damage_sub
particle block grass_block ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 1