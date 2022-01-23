# 3 Damage
 data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=..3.5] run function asa_animator:narga/anim/tail_whip/events/damage_sub
particle cloud ~ ~ ~ 0 0 0 0.05 3