# 7 Damage
 data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=0..7] run function asa_animator:brachyr/manager/bomb/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~-0.5 ~ 0 0 0 0 1
particle lava ~ ~-0.5 ~ 0 0 0 0 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.2 20
kill @s