# 5.5 ~ 2.5 Damage
data merge storage score_damage: {Damage:11.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..4] run function asa_animator:brachy/manager/bomb/damage_sub
data merge storage score_damage: {Damage:5.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=4..6.7] run function asa_animator:brachy/manager/bomb/damage_sub
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20