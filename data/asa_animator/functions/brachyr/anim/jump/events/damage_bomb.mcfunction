# 8 ~ 4 Damage
data merge storage score_damage: {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..5] run function asa_animator:brachyr/manager/bomb/damage_sub
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=5..8] run function asa_animator:brachyr/manager/bomb/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
execute if entity @s[tag=ActiveArmL] positioned ^1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=ActiveArmR] positioned ^-1.5 ^ ^ run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=ActiveArmL] positioned ^1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute if entity @s[tag=ActiveArmR] positioned ^1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20
execute if entity @s[tag=ActiveArmL] positioned ^-1.5 ^ ^ run particle lava ~ ~-0.5 ~ 0 0 0 0 15
execute if entity @s[tag=ActiveArmR] positioned ^-1.5 ^ ^ run particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20