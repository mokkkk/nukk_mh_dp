# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=..3] run function asa_animator:kushala/anim/claw_l/events/damage_sub
particle sweep_attack ^-1 ^ ^ 0 0 0 0 1
particle sweep_attack ^ ^ ^ 0 0 0 0 1
particle sweep_attack ^1 ^ ^ 0 0 0 0 1