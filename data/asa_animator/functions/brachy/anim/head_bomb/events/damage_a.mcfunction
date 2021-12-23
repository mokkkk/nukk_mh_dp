# 5.5 ~ 2.5 Damage
 data modify storage score_damage: Argument set value {Damage:11.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=..4] run function asa_animator:brachy/manager/bomb/damage_sub
 data modify storage score_damage: Argument set value {Damage:5.0f, BypassArmor:0b}
execute as @e[type=!armor_stand,type=!marker,tag=!BrachyParts,distance=4..6.7] run function asa_animator:brachy/manager/bomb/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 10
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20