# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!KushalaParts,distance=..3] run function asa_animator:kushala/anim/claw_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
particle sweep_attack ^-1 ^ ^ 0 0 0 0 1
particle sweep_attack ^ ^ ^ 0 0 0 0 1
particle sweep_attack ^1 ^ ^ 0 0 0 0 1