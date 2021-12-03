# 8 ~ 4 Damage
data merge storage score_damage: {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..5] run function asa_animator:brachyr/manager/bomb/damage_sub
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=5..8] run function asa_animator:brachyr/manager/bomb/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
execute positioned ^1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute positioned ^-1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute positioned ^1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute positioned ^1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20
execute positioned ^-1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute positioned ^-1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20