# 8 ~ 4 Damage
data merge storage score_damage: {Damage:16.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/manager/bomb/damage_sub
data merge storage score_damage: {Damage:8.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyRParts,distance=4..5] run function asa_animator:brachyr/manager/bomb/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20